name:search_rez
description:Результаты поиска
======
<?php

/*Плагин для поиска с пагинацией и выводом превью изображений и текста первью*/
	/*ver. 1.0.2*/


	function deleteGET($url, $name, $amp = true) {
	$url = str_replace("&amp;", "&", $url); // Заменяем сущности на амперсанд, если требуется
	list($url_part, $qs_part) = array_pad(explode("?", $url), 2, ""); // Разбиваем URL на 2 части: до знака ? и после
	parse_str($qs_part, $qs_vars); // Разбиваем строку с запросом на массив с параметрами и их значениями
	unset($qs_vars[$name]); // Удаляем необходимый параметр
	if (count($qs_vars) > 0) { // Если есть параметры
		$url = $url_part."?".http_build_query($qs_vars); // Собираем URL обратно
		if ($amp) $url = str_replace("&", "&amp;", $url); // Заменяем амперсанды обратно на сущности, если требуется
	}
	else $url = $url_part; // Если параметров не осталось, то просто берём всё, что идёт до знака ?
	return $url; // Возвращаем итоговый URL
}

function teml_str($val){

	$val['PREU']=preg_replace("~<img [^>]* />~",'',$val['PREU'] );
	$val['PREU']=strip_tags($val['PREU']);
?>
	<div class="search-rezult uk-grid uk-grid-small">
		<div class="uk-width-1-10">
			<a href="<?=$val['URL'];?>"><img src="<?=$val['IMAGE'];?>" alt="<?=$val['TITLE'];?>"/></a>
		</div>
		<div class="uk-width-9-10">
			<a href="<?=$val['URL'];?>" class="title"><?=$val['TITLE'];?></a>
			<p><?=$val['PREU']?></p>
		</div>
	</div>
<?
}

$page=8;
if($_GET['s']){	
	$zaprs=$modx->db->escape($_GET['s']);
	$table = $modx->getFullTableName('site_content');
	$n="SELECT id,content,pagetitle FROM {$table} WHERE pagetitle LIKE '%$zaprs%' OR content LIKE '%$zaprs%' AND searchable=1 AND deleted=0 AND hidemenu=0 AND published=1"; 
	$result = $modx->db->query($n); 
	$rez = $modx->db->makeArray($result);
	foreach ($rez as $k => $v) {
		$url=$modx->makeUrl($v['id']);

		if (iconv_strlen($v['content']) > 800){
			$mystr = substr($v['content'], 0, strpos($v['content'], ' ', 800)) . '...';
			$preu = $mystr;
		}else{
			$mystr = $v['content'];
			$preu = $mystr;
		}
		$img = $modx->getTemplateVar('search_img_prev', '*', $v['id']);
		$imagepr = $img[value];

		$ss[] = array( 'URL' => $url,'PREU'=> $preu, 'TITLE'=> $v['pagetitle'], 'IMAGE'=>  $imagepr );
	}
	$count=count($ss);
?>

<? if($count>0){

		if($_GET['PAGEN']){
			$start=$_GET['PAGEN'];
			$st_end=$start+$page;
			if($st_end>$count){$st_end=$count;}
		}else{
			$start=1;
			$st_end=$page;
			if($st_end>$count){$st_end=$count;}

		}
		if($st_end-$start!=$page){
			if($start==1){
				$page2=$st_end;
			}else{
				$page2=$st_end-$start;
			}
		}else{
			$page2=$page;
		}		


		$base_url=$_SERVER['REQUEST_URI'];
		$base_url=deleteGET($base_url,'PAGEN');
		$cl_str=ceil($count/$page);
		$pos=strpos($base_url,'?');
		if($pos===false){$uprs='?';}else{$uprs='&';}
		if(($_GET['PAGEN']) and ($cl_str>0) ){$ss=array_slice($ss, $_GET['PAGEN'], $page, true);}
		$first=$_GET['PAGEN']-$page;
		if($first<0){$first=0;}		
		//if(){}else{}		
?>

<!-- SEARCH RESULT TITLE : begin -->
<p class="search-text-block">Найдено по запросу «<?= $zaprs; ?>». Показано <span> <?= $page2; ?></span></p>
<p>(Результаты <?= $start; ?>-<?= $st_end; ?> из <?= $count; ?>)</p>
<!-- SEARCH RESULT TITLE : end -->

	<?

		$k=0;
		foreach ($ss as $key => $vkl) {
			if($k==$page){break;}
			$k++;
			teml_str($vkl);
		}
	?>
<?

		if($count>$page){
?>	
<div class="pagination">
		<ul>
			<li class="prev"><a <? echo "href='{$base_url}{$uprs}PAGEN={$first}'";?>><i class="uk-icon-long-arrow-left"></i>Предыдущая</a></li>
			<?
						 for ($i=0; $i < $cl_str; $i++) { 
							 $strt=$i*$page;
							 $ii=$i+1;
							 $ij=$i-1;
							 $ik=$i+2;
							 $cl_str_pre=$count-$page;
							 $strt_prew=$strt-$page;
							 $strt_last=$strt+$page;
							 $strt_2_page=2*$page;
							 $cl_str_pre_2_page=$count-($page*2);

							 if ($cl_str<=10){
								 if($strt==$_GET['PAGEN']){
									 echo "<li><a href='#' onclick='return false' class='active'>{$ii}</a></li>";
									 $strt2=$strt+$page;
									 if($strt2>=$count){$strt2=$strt;}
								 }else{
									 echo "<li><a  href=\"{$base_url}{$uprs}PAGEN={$strt}\">{$ii}</a></li>";
								 }
							 }else{
								 if($strt==$_GET['PAGEN']){
									 if($strt_prew>=$page and $strt!=0){
										 if($strt_prew>=$strt_2_page){
											 echo "<li><span>...</span></li>";
										 }
										 echo "<li><a  href=\"{$base_url}{$uprs}PAGEN={$strt_prew}\">{$i}</a></li>";
									 }
									 echo "<li><a href='#' onclick='return false' class='active'>{$ii}</a></li>";
									 if($strt_last<=$cl_str_pre){
										 echo "<li><a  href=\"{$base_url}{$uprs}PAGEN={$strt_last}\">{$ik}</a></li>";
										 if($strt_last<=$cl_str_pre_2_page){
											 echo "<li><span>...</span></li>";
										 }
									 }

									 $strt2=$strt+$page;
									 if($strt2>=$count){$strt2=$strt;}
								 }else{
									 if($strt<$page or $strt>$cl_str_pre){
										 echo "<li><a  href=\"{$base_url}{$uprs}PAGEN={$strt}\">{$ii}</a></li>";
									 }
								 } 
							 }
						 }
			?><li class="next"><a <? echo "href='{$base_url}{$uprs}PAGEN={$strt2}'";?>>Следующая<i class="uk-icon-long-arrow-right"></i></a></li>
		</ul>
	</div>	
<?
						}
	}else{
?>
<p>По вашему запросу «<?=$zaprs;?>» ничего не найдено. Попробуйте повторить поиск по другим ключевым словам</p>
<?
		 }
}
