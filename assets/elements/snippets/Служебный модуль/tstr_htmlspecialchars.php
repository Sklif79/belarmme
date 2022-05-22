name:tstr_htmlspecialchars
description:преобразует спецсимволы в html-сущности
======
<?php

/*
Преобразует спецсимволы в html-сущности для строки, указанной в tstr
* @author Rising13
*/
$tstr = (isset($tstr)) ? $tstr: $modx -> documentObject['tstr'];
$tstr = htmlspecialchars($tstr);
return $tstr;
