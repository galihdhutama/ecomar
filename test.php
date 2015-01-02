<?php
$host = 'localhost';
$username = 'root';
$password = '';
$connect = mysql_connect($host, $username, $password);
mysql_select_db('webcrawl', $connect);

    $id = $_GET['id'];
    $sql = "SELECT * FROM produk WHERE id='$id'";
    $result = (mysql_fetch_assoc(mysql_query($sql)));
    $second = $result['idsec'];
    
    $sql1 = "SELECT * FROM ar WHERE id1=$second ORDER BY sc DESC";
    $result1 = (mysql_fetch_assoc(mysql_query($sql1)));
    $ar = $result1['sc'];
    
    $hasil = (mysql_query("SELECT * FROM produk WHERE idsec='$second'"));
    $i = 1;
    while ($baris = mysql_fetch_assoc($hasil)) {
        ?>
        <table>
            <tr>
                <?php
                if ($id != $baris['id']) {
                    ?>
                    <td><?php echo $i; ?></td>
                    <td><a href="detail.php?id=<?php echo $baris['id']; ?>" class="kedua" id="<?php echo $baris['id']; ?>"><?php echo $baris['nama']; ?></a></td>
                        <?php
                        $i++;
                    }
                    ?>
            </tr>
        </table>
        <?php
    }
?>