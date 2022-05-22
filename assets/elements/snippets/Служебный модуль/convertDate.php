name:convertDate
description:Вывод даты в заданном формате по предложенному параметру
======
<?php

	/*
* Данный сниппет предназначен для вывода даты  в различных форматах в зависимости от параметра "type". Варианты: jFY - 22 декабря 2014, jF - 22 декабря, dhY - 22.12.2014, dhy - 22.12.14, d - 22, hy - 12.14,dhY_in_Hi - 22.12.2014 в 12:15. Время берется из параметра "PubDate", если параметр "timestep" равен 1, то строка из поля date конвертируется в формат jFY - 22 декабря 2014.
* @author Rising13
*/
	$timestep=(isset($timestep)) ? $timestep: $modx -> documentObject['timestep'];	
$type= (isset($type)) ? $type: $modx -> documentObject['type'];
$monthes = array('','января','февраля','марта','апреля','мая','июня','июля','августа','сентября','октября','ноября','декабря');
$PubDate= (isset($PubDate)) ? $PubDate: $modx -> documentObject['PubDate'];

if($PubDate!=""){
	if(!$timestep){	
		$day = date("j" ,$PubDate);
		$day2 = date("d" ,$PubDate);
		$month = $monthes[date("n",$PubDate)];
		$month2 = date("m",$PubDate);
		$year = date("Y",$PubDate);
		$year2 = date("y",$PubDate);
		$hour = date("H",$PubDate);
		$minute = date("i",$PubDate);
	}else{
		$datearr=explode(' ',$PubDate);
		$date_val=$datearr[0];
		$art=explode('-',$date_val);
		$day=$art[0];
		$day2=$art[0];
		$m_id=(int)$art[1];
		$month=$monthes[$m_id];
		$month2=$art[1];
		$year=$art[2];
	}


	switch ($type) {
		case 'jFY':
		echo $day.' '.$month.' '.$year;
		break;
		case 'jF':
		echo $day.' '.$month;
		break;
		case 'dhY':
		echo $day2.'.'.$month2.'.'.$year;
		break;
		case 'dhy':
		echo $day2.'.'.$month2.'.'.$year2;
		break;
		case 'd':
		echo $day2;
		break;
		case 'hy':
		echo $month2.'.'.$year2;
		case 'dhY_in_Hi':
		echo $day2.'.'.$month2.'.'.$year.' в '.$hour.':'.$minute;
		break;
	}
}
