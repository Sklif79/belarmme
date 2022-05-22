name:prod_gallery_only_tpl
description:шаблон вывода пункта галереи
======
<li>
	<a href="[+col0+]" data-uk-lightbox="{group:'gallery'}">
		<img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=400,h=203,f=webp,q=84,far=C,bg=ffffff,webp=1`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=400,h=203,f=webp,q=84,far=C,bg=ffffff,webp=1`]]`]]" alt=""/></a>
</li>