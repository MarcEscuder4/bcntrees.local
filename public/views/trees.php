<?php 
$twig = require_once __DIR__ . '/../../config/twig.php';
require_once __DIR__ . '/../../config/settings.php';



$arbolesJson = file_get_contents($SITE_URL."/api/arboles");
$arboles = json_decode($arbolesJson, true);


//TODO: TODOS LOS TREES HAY QUE MOSTRARLOS AQUÍ
// Actualizar la plantilla a graella con un for

echo $twig->render('trees.html.twig', [


 ]);