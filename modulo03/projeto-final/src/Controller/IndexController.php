<?php

declare(strict_types = 1);

namespace App\Controller;

class IndexController extends AbstractController
{
    public function indexAction(): void
    {
        //echo dirname(__DIR__);
        //include dirname(__DIR__) . '/View/teste.php'; // dirname() pega a pasta um nivel acima
        //include dirname(__DIR__) . '/View/index/index.php';
        parent::render('index/index');
    }

    public function loginAction(): void
    {
        //include dirname(__DIR__) . '/View/index/login.php';
        parent::render('index/login');
    }

}