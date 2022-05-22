name:childcount
description:Количество активных дочерних элементов
======
<?php

/*
Выводит количество дочерних элементов для страницы с id введенным в поле "idp" по введенному id, если id страницы не введено, то выводит количество дочерних элементов для родителя текущей страницы
* @author Rising13 *
* ver. 1.0.0 *
*/
$idp=(isset($idp)) ? $idp: $modx -> documentObject['idp'];	//id страницы
if ($idp!="") {
	$idpar= $idp;
}else{
	$idp=$modx -> documentIdentifier;
	$idpar1 = $modx-> getParent ($idp,1,id);
	$idpar= $idpar1[id];
}	
$actchildrens = $modx->getActiveChildren($idpar);
$actchildrens_count=count($actchildrens);
echo $actchildrens_count;
