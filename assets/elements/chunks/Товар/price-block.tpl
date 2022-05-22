name:price-block
description:Блок с ценами на странице товар 
======
<div class="price-block">
	<div class="title">Цена</div>
	<div class="price"><span>от [*price*] руб. </span>
		<!--<small>[[old_price_num_format? &new_price=`[*price*]`]] руб.</small>-->
	</div>
	[[if? &is=`[*price_no_sale*]:isempty` &then=`` &else=`
		<div class="sale"><span>[*price_no_sale*] руб. </span>
			<!--<small>[[old_price_num_format? &new_price=`[*price_no_sale*]`]] руб.</small>>-->
		</div>
	`]]
	<div class="nds">Цены указаны c НДС</div>
</div>