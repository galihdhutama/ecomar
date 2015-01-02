<?php

$host = 'localhost';
$username = 'root';
$password = '';
$connect = mysql_connect($host, $username, $password);
mysql_select_db('webcrawl', $connect);

if (isset($_POST["pertama"]) && isset($_POST["kedua"])) {
    $arr = ['a', 'b', 'c', 'd', 'e'];
    $pertama = $_POST['pertama'];
    $kedua = $_POST['kedua'];

    $id1 = $arr[$pertama - 1];
    $id2 = $arr[$kedua - 1];
    $kolom = $id1 . $id2;
    $nilai = "$kolom+1";

    $single = $arr[$pertama - 1];
    $nilaisingle = "$single+1";

    $sql = "UPDATE record SET $kolom = $nilai WHERE idrec=1";
    $result = mysql_query($sql);

    $sql1 = "UPDATE singlerec SET $single = $nilaisingle WHERE idsingle=1";
    $result1 = mysql_query($sql1);

    $jumlah = (mysql_fetch_assoc(mysql_query("SELECT * FROM record")));
    $total = $jumlah['ab'] + $jumlah['ac'] + $jumlah['ad'] + $jumlah['ae'] +
             $jumlah['ba'] + $jumlah['bc'] + $jumlah['bd'] + $jumlah['be'] +
             $jumlah['ca'] + $jumlah['cb'] + $jumlah['cd'] + $jumlah['ce'] +
             $jumlah['da'] + $jumlah['db'] + $jumlah['dc'] + $jumlah['de'] +
             $jumlah['ea'] + $jumlah['eb'] + $jumlah['ec'] + $jumlah['ed'];

    $sql2 = "SELECT $kolom FROM record";
    $item = (mysql_fetch_assoc(mysql_query($sql2)));

    $sql3 = "SELECT $single FROM singlerec";
    $jumsingle = (mysql_fetch_assoc(mysql_query($sql3)));

    $sup = $item[$kolom] / $total;
    $con = $jumsingle[$single] / $item[$kolom];
    $sc = $sup * $con;
    
    $sql4 = "UPDATE ar SET sup = $sup, con = $con, sc = $sc WHERE id1 = '$id1' AND id2 = '$id2'";
    $finish = (mysql_query($sql4));
    }
?>