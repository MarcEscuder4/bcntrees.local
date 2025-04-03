<?php
require_once __DIR__ . '/../vendor/autoload.php';

$loader = new \Twig\Loader\FilesystemLoader(__DIR__ . '/../templates');
$twig = new \Twig\Environment($loader);

$users = [
    ['name' => 'Juan Pérez', 'email' => 'juan@example.com'],
    ['name' => 'Ana López', 'email' => 'ana@example.com'],
    ['name' => 'Carlos Gómez', 'email' => 'carlos@example.com']
];

echo $twig->render('users.html.twig', ['users' => $users]);
