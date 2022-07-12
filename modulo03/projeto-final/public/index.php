<?php

ini_set('display_errors',1);

include '../vendor/autoload.php';

use App\Controller\IndexController;
use App\Controller\ProductController;
use App\Controller\CategoryController;
use App\Controller\ErrorController;

$url= explode('?',$_SERVER['REQUEST_URI'])[0];

function createRoute(string $controllerName, string $methodName){
    return[
        'controller'=>$controllerName,
        'method'=>$methodName,
    ];
}

$routes =[ // Array associativo
        '/'=>           createRoute(IndexController::class, 'indexAction'),
        '/produtos'=>   createRoute(ProductController::class, 'listAction'),
    
    // '/'=> [
    //         'controller' => IndexController::class, // quaqndo coloca ::class, esta invocando o caminho dela "App\Controller\ProductController"
    //         'method' => 'indexAction',
    // ],
    // '/produtos'=> [
    //         'controller'=> ProductController::class,
    //         'method' => 'listAction',
    // ],

];

if (false === isset($routes[$url])){
    // $e=new ErrorController();
    // $e->notFoundAction();
    (new ErrorController())->notFoundAction();// desta forma diminuimos as linhas de código, pois usa para ser usado apenas neste momento 
    exit;
}

$controllerName=$routes[$url]['controller'];
//echo $controllerName;
$methodName=$routes[$url]['method'];
(new $controllerName())->$methodName();

var_dump($routes[$url]);


// if ($url === '/'){
//     $c= new IndexController();
//     $c->indexAction();
// } elseif ($url === '/login'){
//     $c= new IndexController();
//     $c->loginAction();
// } elseif ($url === '/produtos') {
//     $p = new ProductController();
//     $p->listAction();
// } else {
//     $error= new ErrorController();
//     $error-> notFoundAction();
// }