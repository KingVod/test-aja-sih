
    <center>
    <h2>menampilkan database</h2>
        <form action="" method="get">
            <input type="text" name="nampil" placeholder="cari penulis"></p>
            <button type="submit" name="cari"</button>
        </form>
    </center>

<?php
$koneksi = mysqli_connect("localhost","root","","salesman");

if (isset($_GET['nampil'])) {
$katakunci = $_GET['nampil'];
$sql = "SELECT * FROM buku WHERE penulis LIKE '%$katakunci%'";
$hasil = mysqli_query($koneksi, $sql); 

    if (mysqli_num_rows($hasil) > 0)  {
        while ($row = mysqli_fetch_assoc($hasil)) {
            echo "penulis; {$row['penulis']}<br>";
            echo "jumlah_halaman; {$row['jumlah_halaman']}<br>";
            echo "penerbit; {$row['penerbit']}<br>";
            echo "thn_terbit; {$row['thn_terbit']}<br>";
        }
    }

}
?>