<?php 
$twig = require_once __DIR__ . '/../../config/twig.php';
require_once __DIR__ . '/../../config/settings.php';

$request = strtok($_SERVER['REQUEST_URI'], '?'); // Obtener solo la parte de la ruta sin parámetros
preg_match('/^\/arbre\/(\d+)$/', $request, $matches);

// Verificar si encontramos el ID del árbol
if (isset($matches[1])) {
    $idArbol = $matches[1];  // El ID del árbol será el valor capturado
} else {
    http_response_code(404);
    echo "Árbol no encontrado.";
    exit;
}



$arbolJson = file_get_contents($SITE_URL."/api/arboles/$idArbol");
$arbol = json_decode($arbolJson, true);


//TODO: TODOS LOS TREES HAY QUE MOSTRARLOS AQUÍ
// Actualizar la plantilla a graella con un for

// Muestra los datos del array
//print_r($arbolJson);
//  print_r($arbol);

/*(
    [id] => 1
    [common_name] => Warrenred Pacific Sunset
    [id_genre] => 1 */


echo $twig->render('tree.html.twig', [
    "arbol" => $arbol 

 ]);

