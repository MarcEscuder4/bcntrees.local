<?php

class ArbolController
{

    // ### Configuracion ### /
    const OBJECT = 1;
    const JSON = 2;

    private $connection;

    public function __construct()
    {
        $dbController = DatabaseController::getInstance();
        $this->connection = $dbController->getConnection();
    }

    // ### Arboles ### /

    // Devuelve por GET todos los Arboles /

    public static function getArboles($mode = self::OBJECT)
    {
        try {
            // TODO: Hacer JOIN con genero
            $sql = "SELECT specie.id, genre.name AS genre_name, specie.common_name
                    FROM specie
                    LEFT JOIN genre ON specie.id_genre = genre.id";

            $statement = (new self)->connection->prepare($sql);
            $statement->setFetchMode(PDO::FETCH_ASSOC);
            $statement->execute();

            $result = $statement->fetchAll();

            if ($mode == self::OBJECT) {
                return $result;
            } else if ($mode == self::JSON) {
                return json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
            }

        } catch (PDOException $error) {
            echo $sql . "<br>" . $error->getMessage();
        }
    }

    // Añade por POST los Arboles nuevos /
    public static function postNewArbol($mode)
    {
        // Recibe el JSON enviado en la solicitud HTTP
        $input = file_get_contents('php://input');
        
        // Decodifica el JSON en un array asociativo
        $data = json_decode($input, true);

        // Verificar si la decodificación fue exitosa
        if (json_last_error() !== JSON_ERROR_NONE) {
            // Si hay un error en el JSON, devolver un mensaje de error
            echo json_encode(['status' => 'error', 'message' => 'Formato JSON inválido']);
            return;
        }

        // Definir los campos requeridos para la creación del usuario
        $requiredFields = ['id', 'common_name', 'id_genre'];
        $missingFields = [];

        // Verificar que todos los campos necesarios están presentes en el JSON recibido
        foreach ($requiredFields as $field) {
            if (!isset($data[$field])) {
                // Si falta algún campo, agregarlo a la lista de campos faltantes
                $missingFields[] = $field;
            }
        }

        // Si hay campos faltantes, devolver un mensaje específico con los nombres de los campos ausentes
        if (!empty($missingFields)) {
            echo json_encode(['status' => 'error', 'message' => 'Faltan campos requeridos: ' . implode(', ', $missingFields)]);
            return;
        }

        try {
            // Definir la consulta SQL para insertar un nuevo usuario en la base de datos
            $sql = "INSERT INTO specie (id, common_name, id_genre) VALUES (:id, :common_name, :id_genre)";

            // Preparar la consulta SQL utilizando PDO
            $statement = (new self)->connection->prepare($sql);

            // Asignar los valores de los parámetros en la consulta SQL
            $statement->bindValue(':id', $data['id']);
            $statement->bindValue(':common_name', $data['common_name']);
            $statement->bindValue(':id_genre', $data['id_genre']); 

            // Ejecutar la consulta SQL y verificar si la inserción fue exitosa
            if ($statement->execute()) {
                // Si la inserción fue exitosa, devolver un mensaje de éxito
                echo json_encode(['status' => 'success', 'message' => 'Arbol creado correctamente.']);
            } else {
                // Si hubo un problema al insertar, devolver un mensaje de error
                echo json_encode(['status' => 'error', 'message' => 'Error al insertar el Arbol.']);
            }

        } catch (PDOException $error) {
            // Capturar cualquier error que ocurra durante la ejecución de la consulta SQL
            echo json_encode(['status' => 'error', 'message' => 'Error al insertar en la base de datos: ' . $error->getMessage()]);
        }
    }
    // Devuelve por GET el Arbol seleccionado por id /

    public static function getArbolId($id, $mode = self::OBJECT)
    {
        
        try {
            $sql = "SELECT * FROM specie WHERE id = :id";

            $statement = (new self)->connection->prepare($sql);
            $statement->bindValue(":id", $id);
            $statement->setFetchMode(PDO::FETCH_ASSOC);
            $statement->execute();

            $result = $statement->fetch();

            // Verificar si se encontró un usuario /
            if ($result) {
                if ($mode == self::OBJECT) {
                    return $result;
                } else if ($mode == self::JSON) {
                    return json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
                }
            } else {
                return json_encode(['status' => 'error', 'message' => 'Arbol no encontrado'], JSON_PRETTY_PRINT);
            }

        } catch (PDOException $error) {
            echo $sql . "<br>" . $error->getMessage();
        }
    }

    // Actualiza por PATCH el Arbol seleccionado por id /
    public static function patchArbolIdUpdate($id, $mode = self::OBJECT)
    {
        // Recibe el JSON
        $input = file_get_contents('php://input');
        // Decodifica el JSON en un array asociativo
        $data = json_decode($input, true);

        // Verificar si la decodificación fue exitosa (salir si hay un error en el JSON)
        if (json_last_error() !== JSON_ERROR_NONE) {
            echo json_encode(['status' => 'error', 'message' => 'Formato JSON inválido']);
            return;
        }

        // Definir los campos que pueden ser actualizados
        $allowedFields = ['common_name', 'id_genre'];
        $fieldsToUpdate = [];
        
        // Filtramos los campos que se desean actualizar
        foreach ($allowedFields as $field) {
            if (isset($data[$field])) {
                $fieldsToUpdate[$field] = $data[$field];
            }
        }

        // Si no hay campos para actualizar, devolver un mensaje de error
        if (empty($fieldsToUpdate)) {
            echo json_encode(['status' => 'error', 'message' => 'No se ha proporcionado ningún campo para actualizar.']);
            return;
        }

        try {
            // Construir la parte SET de la consulta dinámicamente
            $setClause = [];
            foreach ($fieldsToUpdate as $key => $value) {
                $setClause[] = "$key = :$key";
            }

            // Combinar las partes para la consulta SQL
            $sql = "UPDATE specie SET " . implode(', ', $setClause) . " WHERE id = :id";

            // Prepara la consulta PDO
            $statement = (new self)->connection->prepare($sql);

            // Asignar valores con bindValue
            foreach ($fieldsToUpdate as $key => $value) {
                $statement->bindValue(":$key", $value);
            }
            $statement->bindValue(':id', $id);

            // Ejecutar la consulta y verificar el resultado
            if ($statement->execute()) {
                echo json_encode(['status' => 'success', 'message' => 'Arbol actualizado correctamente.']);
            } else {
                echo json_encode(['status' => 'error', 'message' => 'Error al actualizar el Arbol.']);
            }

        } catch (PDOException $error) {
            // Captura cualquier error que ocurra durante la ejecución
            echo json_encode(['status' => 'error', 'message' => 'Error al actualizar en la base de datos: ' . $error->getMessage()]);
        }
    }

    // Elimina por DELETE el Arbol seleccionado por id /

    public static function deleteArbolById($id)
    {
        try {
            // Define la consulta SQL para eliminar un usuario por ID /
            $sql = "DELETE FROM specie WHERE id = :id";

            // Prepara la consulta PDO /
            $statement = (new self)->connection->prepare($sql);

            // Asignar el valor del ID con bindValue /
            $statement->bindValue(':id', $id);

            // Ejecutar la consulta y verificar el resultado /
            if ($statement->execute()) {
                echo json_encode(['status' => 'success', 'message' => 'Arbol eliminado correctamente.']);
            } else {
                echo json_encode(['status' => 'error', 'message' => 'Error al eliminar el Arbol.']);
            }

        } catch (PDOException $error) {
            // Captura cualquier error que ocurra durante la ejecución /
            echo json_encode(['status' => 'error', 'message' => 'Error al eliminar en la base de datos: ' . $error->getMessage()]);
        }
    }
}