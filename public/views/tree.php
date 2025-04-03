<?php 
$twig = require_once __DIR__ . '/../../config/twig.php';
echo $twig->render('tree.html.twig', [ ]);