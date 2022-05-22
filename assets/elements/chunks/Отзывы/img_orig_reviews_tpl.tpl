name:img_orig_reviews_tpl
description:Шаблон вывода оригинала отзыва
======
<div class="uk-width-1-5">
	<a href="[+col0+]" data-uk-lightbox>
		<img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=238,h=344,f=webp,q=84,far=C,bg=ffffff,webp=1`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=238,h=344,f=webp,q=84,far=C,bg=ffffff,webp=1`]]`]]" alt=""/>
	</a>
</div>