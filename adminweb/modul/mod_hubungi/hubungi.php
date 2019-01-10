<?php
$aksi="modul/mod_hubungi/aksi_hubungi.php";
switch($_GET[act]){
  // Tampil Hubungi Kami
  default:
    echo "<h2>Pesan Masuk</h2>
          <table>
          <tr><th>No</th><th>Nama</th><th>Email</th><th>Nama Bank</th><th>Foto</><th>Aksi</th></tr>";

    $p      = new Paging;
    $batas  = 10;
    $posisi = $p->cariPosisi($batas);

    $tampil=mysql_query("SELECT * FROM hubungi ORDER BY id_hubungi DESC LIMIT $posisi, $batas");

    $no = $posisi+1;
    while ($r=mysql_fetch_array($tampil)){
      $tgl=tgl_indo($r[tanggal]);
	  if(!empty($r['gambar'])){
		  // $gambar = "<img id='zoom_02' style='width:50px;' src='../payment/$r[gambar]' data-zoom-image='../payment/$r[gambar]'> ";
      $gambar="<a href='../payment/$r[gambar]' class='MagicZoom' rel='zoom-id:zoom;opacity-reverse:true;' >   
                <img  src='../payment/$r[gambar]'  style='width:70px; height:70px;'/>
              </a>";
	  }else{
		  $gambar = 'no image';
	  }
      echo "<tr><td>$no</td>
                <td>$r[nama]</td>
                <td><a href=?module=hubungi&act=balasemail&id=$r[id_hubungi]>$r[email]</a></td>
				<td>$r[bank]</td>
                <td>$gambar</td>
                <td><a href=?module=hubungi&act=balasemail&id=$r[id_hubungi]><b>Baca</b></a> | 
		               <a href=$aksi?module=hubungi&act=hapus&id=$r[id_hubungi]><b>Hapus</b></a></td></tr>";
               
    $no++;
    }
    echo "</table>";
    $jmldata=mysql_num_rows(mysql_query("SELECT * FROM hubungi"));
    $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
    $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

    echo "<div id=paging>Hal: $linkHalaman</div><br>";
    break;

  case "balasemail":
    $tampil = mysql_query("SELECT * FROM hubungi WHERE id_hubungi='$_GET[id]'");
    $r      = mysql_fetch_array($tampil);

    echo "<h2>Reply Email</h2>
          <form method=POST action='?module=hubungi&act=kirimemail'>
          <table>
          <tr><td>Nama</td><td> : $r[nama]</td></tr>
          <tr><td>Email</td><td> : $r[email]</td></tr>
          <tr><td>Nama Bank</td><td> : $r[bank]</td></tr>
          <tr><td>No. Rekening</td><td> : $r[norek]</td></tr>
          <tr><td>Jumlah Transfer</td><td> : Rp. $r[bayar]</td></tr>
          <tr><td>ID Order</td><td> : $r[id_order]</td></tr>
          <tr><td>Subjek</td><td> : $r[subjek]</td></tr>
          <tr><td>Pesan</td><td> : $r[pesan]</td></tr>
          <tr><td colspan=2><input type=button value=Kembali onclick=self.history.back()></td></tr>
          </table></form>";
     break;
    
  case "kirimemail":
    mail($_POST[email],$_POST[subjek],$_POST[pesan],"From: redaksi@bukulokomedia.com");
    echo "<h2>Status Email</h2>
          <p>Email telah sukses terkirim ke tujuan</p>
          <p>[ <a href=javascript:history.go(-2)>Kembali</a> ]</p>";	 		  
    break;  
}
?>
