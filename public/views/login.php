<?php
session_start();
//print_r($_SESSION);
//Cargamos el archivo twig
require_once __DIR__ . '/../../config/twig.php';
require_once __DIR__ . '/../../src/controller/apiController/SessionController.php';

//Verificacion de que el usuario este conectado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = htmlspecialchars($_POST["username"]);
    $password = htmlspecialchars($_POST["password"]);

    if (SessionController::userLogin($username, $password)) {
        header("Location: /admin");
        exit;
    } else {
        $_SESSION['error'] = "Nombre de usuario o contraseña incorrectos.";
        header("Location: /login");
        exit;
    }
}


// ---- Renderizar plantilla ----
echo $twig->render('login.html.twig', ['error' => $_SESSION['error'] ?? null]);
print_r( $_SESSION['error']);