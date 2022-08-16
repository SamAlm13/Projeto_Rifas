<?php

session_start();

if(!isset($_SESSION['NOME']) && ($_SESSION['TIPO'])){
    $dados = array(
        'tipo' => 'error',
        'mensagem' => 'Você não está autenticado no Sistema.'
    );
}else{
    $dados = array(
        'tipo' => 'success',
        'mensagem' => 'Seja bem-vindo, '.$_SESSION['NOME']
    );
}

echo json_encode($dados);