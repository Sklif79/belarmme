name:popular_products_tpl
description:Шаблон вывода элементов блока популярный товар
======
<li>
	<div class="wrap">
		<div class="img">
			<a href="[+url+]"><img src="[[phpthumb? &input=`[+img_prew_prod+]` &options=`w=225,h=200,f=webp,q=84,far=C,bg=ffffff,webp=1`]]" alt="[+pagetitle+]"/></a>
			<div class="product-icons">
				[[if? &is=`[+novelty+]:=:1` &then=`<div class="new" title="Новинка"></div>`]]
				[[if? &is=`[+bestseller+]:=:1` &then=`<div class="hit" title="Хит продаж"></div>`]]
				[[if? &is=`[+sale+]:=:1` &then=`<div class="sale" title="Скидка"></div>`]]
			</div>
		</div>
		<div class="content">
			<a href="[+url+]" class="title">[+pagetitle+]</a>

			<p class="price">Цена: от [+price+] руб.</p>

			<!--<p class="old-price">Цена: от [[old_price_num_format? &new_price=`[+price+]`]] руб.</p>-->
		</div>
		<div class="button"><a href="[+url+]" class="primary-button">Подробнее</a></div>
	</div>
</li>