name:GetPageParams
description:Получение параметров страницы 
======
<?php

/**
* @desc Выводит необходимый параметр страницы или TV параметр по введенному id, если id страницы не введено, то выводит параметр для родителя текущей страницы
* @desc	Displays page desired parameter or TV parameter on the entered id, id if the page is entered, the output parameters for the parent of the current page
*
* @author Rising13
* @version 1.0.0 (20.06.2016)
*
* @param iddoc {integer} - id документа. По умолчанию - родитель текущего документа / id document, if not specified, it will be the parent of the current document. Default: the parent of the current document.
* @param field {integer,string} - название необходимого параметра страницы или TV-параметра. По умолчанию - поле 'content' / The name of the desired parameter page or TV-parameter. Default: 'content'.

* @copyright 2016, Webcompany
* http://webcompany.by
*/
	$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id документа, если не задано, то будет родитель текущего документа
	$field=(isset($field)) ? $field: $modx -> documentObject['field'];	//название необходимого параметра страницы или TV-параметра. Если не задано, то выведет контент

	if ($field==""){
		$field="content";
	}
	
	if ($iddoc!=""){
		$idpar2= $iddoc;
	}else{
		$iddoc=$modx -> documentIdentifier;
		$idpar22 = $modx -> getParent($iddoc,1,id);
		$idpar2= $idpar22[id];
	}

	$docfields = array(
		'id', 'type', 'contentType', 'pagetitle', 'longtitle', 'description',
		'alias', 'link_attributes', 'published', 'pub_date', 'unpub_date', 
		'parent', 'isfolder', 'introtext', 'content', 'richtext', 'template', 'menuindex',
		'searchable', 'cacheable', 'createdby', 'createdon',
		'editedby', 'editedon', 'deleted', 'deletedon', 'deletedby', 'publishedon', 'publishedby',
		'menutitle', 'donthit', 'haskeywords', 'hasmetatags',
		'privateweb', 'privatemgr', 'content_dispo', 'hidemenu', 'alias_visible'
	);

	if (in_array($field, $docfields)) {
		$pardoc = $modx->getDocument($idpar2,$field);
		$pardoc2=$pardoc[$field];
		return $pardoc2;
	} else {
		$txt = $modx->getTemplateVar($field, '*', $idpar2);
		return $txt['value'];
	}