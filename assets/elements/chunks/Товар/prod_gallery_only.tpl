name:prod_gallery_only
description:шаблон вывода только галереи в подробном описании товара
======
<div class="uk-width-1-1">
	<h4 class="title-product">Галерея</h4>
	[[ddGetMultipleField? &inputString_docField=`product_gallery` &outerTpl=`prod_gallery_only_outer_tpl` &rowTpl=`prod_gallery_only_tpl`]]
</div>