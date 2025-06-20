<?php
//CORS
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');

require_once __DIR__ . '/../src/Router/Router.php';
require_once __DIR__ . '/../src/Controller/NewsController.php';
require_once __DIR__ . '/../src/Config/Database.php';

use NewsApi\Router\Router;

$router = new Router();
$router->handleUrl($_SERVER['REQUEST_URI'], $_SERVER['REQUEST_METHOD']);