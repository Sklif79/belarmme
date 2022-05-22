name:old_price_num_format
description:Выводит сгенерированную старую цену из новой c форматированным выводом
======
<?php

/*Выводит старую цену из новой*/
	/*Author: Rising13*/
	/*old_price_num_format*/
	/*ver 1.0.1*/
	$new_price=(isset($new_price)) ? $new_price : $modx -> documentObject['new_price'];	//Цена в новом формате
if (empty($new_price)){
	$new_price = 0;
}else{
	$new_price = str_replace(' ', '', $new_price);
	$new_price = str_replace(',', '.', $new_price);
	$new_price = preg_replace("/[^0-9.]/", '', $new_price);
	$new_price = floatval($new_price);
}
$new_price = $new_price * 10000;

return number_format($new_price, -2, '.', ' ');
