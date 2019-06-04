<?php
    include('./lib/conn.php');

    $username = $_REQUEST['loginname'];
    $password = $_REQUEST['password'];

    $sql = "select * from db_users where username='$username' and password='$password'";
    
    $result = $mysqli->query($sql);
    if($result->num_rows>0){
        SetCookie("login", urlencode($username),time()+36000,'/');
        echo "<script>alert('登陆成功,点击跳转');location.href='../html/index.html';</script>";
    }else{
        echo "<script>alert('登陆失败,点击跳转');location.href='../html/index.html';</script>";
    }
?>