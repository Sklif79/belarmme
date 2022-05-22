name:img_index_reviews_tpl
description:Шаблон вывода оригинала отзыва в блоке на главной
======
<div class="uk-width-1-3">
	<a href="[+col0+]" data-uk-lightbox>
		<img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=165,h=230,f=webp,q=84,far=C,bg=ffffff,webp=1`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=165,h=230,f=webp,q=84,far=C,bg=ffffff,webp=1`]]`]]" alt=""/>
	</a>
</div>