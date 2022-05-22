name:catalog_tpl
description:Шаблон вывода превью групп подкаталога в каталоге
======
<li class="items">
	<a href="[+url+]"> <img src="[[phpthumb? &input=`[+img_catalog_prev+]` &options=`w=281,h=205,f=webp,q=84,far=C,bg=ffffff,webp=1`]]" alt="[+pagetitle+]"/>
		<p>[+pagetitle+]</p>
	</a>
</li>