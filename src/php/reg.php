<?php
    include('./lib/conn.php');

    $username = $_POST['loginname'];
    $password = $_POST['password'];
    $phone = $_POST['phone'];
    $addr = $_POST['addr'];

    $sql = "select * from db_users where username='$username'";
    $result = $mysqli->query($sql);
    if($result->num_rows>0){
        die('用户名已存在');
    }

    $insertSql = "insert into db_users(username,password,phone,addr)values('$username','$password','$phone','$addr')";

    $res = $mysqli->query($insertSql);
    if($res){
        echo '<script>alert("注册成功");location.href="../html/login.html";</script>';
    }

    $mysqli->close();  
?>