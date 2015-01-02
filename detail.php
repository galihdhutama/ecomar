<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eCommerce</title>
        <script src="jquery-1.9.1.js"></script>
    </head>
    <body>
        <?php
        include 'connect.php';
        $id = $_GET['id'];
        $sql = "SELECT * FROM produk WHERE id='$id'";
        $result = mysql_query($sql);
        $row = mysql_fetch_array($result);
        ?>
        <table>
            <tr>
                <td>Nama</td>
                <td>:<?php echo $row['nama']; ?></a></td>
            </tr>
            <tr>
                <td>Kategori</td>
                <td>:<?php echo $row['kategori']; ?></td>
            </tr>
            <tr>
                <td>Detail</td>
                <td>:<?php echo $row['detail']; ?></td>
            </tr>
            <tr>
                <td>Harga</td>
                <td>:<?php echo $row['harga']; ?></td>
            </tr>
            <tr>
                <td>Gambar</td>
                <td>:<?php echo $row['pic']; ?></td>
            </tr>
        </table>
        <br>
        <h2>You May Also Like</h2>
        <?php
        $hasil = (mysql_query("SELECT * FROM produk LIMIT 5"));
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
    </body>
</html>
<script>
    $(document).ready(function() {
        $('.kedua').click(function() {
            var pertama = '<?php echo $_GET["id"] ?>';
            var kedua = $(this).attr("id");
            console.log(pertama + "" + kedua);
            $.ajax({
                type: "POST",
                url: "connect.php",
                data: {pertama: pertama, kedua: kedua}
            });
        });
    });
</script>