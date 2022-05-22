name:prod_dignity
description:Выводит преимущества товара или акцию на странице с подробным описанием товара
======
<?php

function tpl_dignity($dpage,$dtitle){
?>
<li>
	<div class="wrap">
		<img src="<? echo $dpage; ?>" alt=""/>
		<? echo $dtitle; ?>
	</div>
</li>
<?
}

function tpl_stock($sheader,$stitle){
?>
<li>
	<div class="wrap wrap-sale">
		<p class="title"><? echo $sheader; ?></p>
		<p><? echo $stitle; ?></p>
	</div>
</li>
<?
									}

$idp=$modx -> documentIdentifier;
$dignity_arr = $modx->runSnippet('ddGetMultipleField',   array( 'inputString_docField' => 'dignity_product', 
															   'inputString_docId' => $idp, 
															   'outputFormat' => 'array'
															  ));
$count_dig=count($dignity_arr);
if($count_dig>0){
	?><ul class="uk-grid  uk-grid-width-1-4 uk-grid-collapse" data-uk-grid-match="{target:'.wrap'}"><?
	foreach($dignity_arr as $dignity_pos){

		if($dignity_pos[0]=='dignity'){
			tpl_dignity($dignity_pos[1],$dignity_pos[2]);
		}else{
			tpl_stock($dignity_pos[3],$dignity_pos[4]);
		}
	}
	echo "</ul>";
}
