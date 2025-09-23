<?php
    include 'conexao.php';
    $id = $_POST['btnExcluir'];

    $sql = $pdo->prepare("DELETE FROM Aluno WHERE id = ?");
    $sql->execute([$id]);

    header("Location: index.php");
    exit;
?>