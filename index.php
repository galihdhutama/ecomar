<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eCommerce</title>
    </head>
    <body>
        <?php
        include 'connect.php';
        $result = (mysql_query("SELECT * FROM produk LIMIT 5"));
        $i = 1;
        while ($row = mysql_fetch_assoc($result)) {
            ?>
            <table>
                <tr>
                    <td><?php echo $i; ?></td>
                    <td><a href="detail.php?id=<?php echo $row['id']; ?>"><?php echo $row['nama']; ?></a></td>
                </tr>
            </table>
            <?php
                $i++;
                }
            ?>
    </body>
</html>