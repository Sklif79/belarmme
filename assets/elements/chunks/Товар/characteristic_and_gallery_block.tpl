name:characteristic_and_gallery_block
description:блок характеристики + галерея
======
<div class="characteristic-block">
	<div class="container">
		<div class="uk-grid">
			[[if? &is=`[*product_charact*]:isempty` &then=`@TPL:prod_gallery_only` &else=`@TPL:prod_charact_plus_gallery`]]
		</div>
	</div>
</div>