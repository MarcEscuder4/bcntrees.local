<?php 
$twig = require_once __DIR__ . '/../../config/twig.php';
echo $twig->render('adminTree.html.twig', [ ]);
