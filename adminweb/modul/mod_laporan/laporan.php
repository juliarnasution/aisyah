<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
    echo "<form action=modul/mod_order/aksi_alldel.php method=POST>";
    echo "<h2>Laporan Pemasukan</h2>
          <table>
          <tr><th>Nomor</th><th>Tanggal Order</th><th>Pendapatan</th></tr>";

    $p      = new Paging;
    $batas  = 10;
    $posisi = $p->cariPosisi($batas);

    $tampil = mysql_query("SELECT produk.harga,orders.tgl_order,orders_detail.jumlah FROM produk,orders,orders_detail WHERE orders.id_orders=orders_detail.id_orders AND orders_detail.id_produk=produk.id_produk   ORDER BY orders.tgl_order DESC LIMIT $posisi,$batas");
    $no=1;
    while($r=mysql_fetch_array($tampil)){
      $tanggal=tgl_indo($r[1]);
      $jum=$r[0]*$r[2];
      $total+=$jum;   
      echo "<tr><td >$no</td>
                <td >".date('d-F-Y',strtotime($r[1]))."</td>
                <td>Rp. ".number_format($r[0]*$r[2])."</td>
            </tr>";
      $no++;
    }
             
    echo "</table>
    Total Pendapatan : Rp. ".number_format($total)."
    </form>";
    // break;
  

}
?>
