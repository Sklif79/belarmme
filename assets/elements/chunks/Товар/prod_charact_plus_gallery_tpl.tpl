name:prod_charact_plus_gallery_tpl
description:Шаблон вывода элементов галереи для варианта с характеристиками
======
<li>
	<a href="[+col0+]" data-uk-lightbox="{group:'gallery'}">
		<img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=330,h=168,f=webp,q=84,far=C,bg=ffffff,webp=1`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=330,h=168,f=webp,q=84,far=C,bg=ffffff,webp=1`]]`]]" alt=""/></a>
</li>