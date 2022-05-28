name:prod_charact_plus_gallery
description:шаблон вывода блоков характеристики товара + галерея
======
<div class="uk-width-large-4-10">
	<p class="title-product">Характеристики</p>

	<div class="min-characteristic-block">
		[*product_charact*]
	</div>
</div>
<div class="uk-width-large-6-10">
	<p class="title-product">Галерея</p>
	[[ddGetMultipleField? &inputString_docField=`product_gallery` &outerTpl=`prod_gallery_only_outer_tpl` &rowTpl=`prod_charact_plus_gallery_tpl`]]
</div>
