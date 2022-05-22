name:articles_tpl
description:шаблон вывода превью статей
======
<li class="item">
	<a href="[+url+]" class="wrap">
		<img src="[[phpthumb? &input=`[+article_img_prev+]` &options=`w=283,h=235,f=webp,q=84,far=C,bg=ffffff,webp=1`]]" alt="[+pagetitle+]"/>

		<p>[+pagetitle+]</p>
	</a>
</li>