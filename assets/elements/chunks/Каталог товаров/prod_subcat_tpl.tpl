name:prod_subcat_tpl
description:Шаблон вывода превью подкатегорий товаров в подкаталоге
======
<div class="gate-catalog">
	<div class="container">
		<h2>[+pagetitle+]</h2>
		<div class="uk-grid">
			<div class="uk-width-1-5"><img class="img-responsive" src="[[phpthumb? &input=`[+img_prew_subcat_group+]` &options=`w=228,h=291,f=webp,q=84,far=C,bg=ffffff,webp=1`]]" alt=""/></div>
			<div class="uk-width-4-5">
				<ul class="product-block gate-slider">
					[[Ditto? &id=`prodgroup` &parents=`[+id+]` &tpl=`popular_products_tpl` &orderBy=`menuindex ASC`]]
				</ul>
			</div>
		</div>
	</div>
</div>