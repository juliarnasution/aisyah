<?php
include "../config/koneksi.php";

if ($_SESSION[leveluser]=='admin'){
  $sql=mysql_query("select * from modul where aktif='Y' order by urutan");
}

if ($m=mysql_fetch_array($sql)){  
echo "<li><a href='?module=profil'><b>Profil</b></a></li>"; 
echo "<li><a href='?module=carabeli'><b>Cara Pembelian</b></a></li>"; 
echo "<li><a href='?module=kategori'><b>Kategori Produk</b></a></li>"; 
echo "<li><a href='?module=produk'><b>Produk</b></a></li>"; 
echo "<li><a href='?module=order'><b>Order</b></a></li>"; 
echo "<li><a href='?module=hubungi'><b>Konfirmasi Pembayaran</b></a></li>"; 
echo "<li><a href='?module=ongkoskirim'><b>Ongkos Kirim</b></a></li>"; 
echo "<li><a href='?module=laporan'><b>Laporan Transaksi</b></a></li>";   
}
?>
