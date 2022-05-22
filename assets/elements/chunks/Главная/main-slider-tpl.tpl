name:main-slider-tpl
description:шаблон вывода элементов вывода слайдера на главной
======
<li>
	<a href="[+col2+]">
		<img src="[[phpthumb? &input=`[+col0+]` &options=`w=1200,h=413,f=webp,q=84,far=C,bg=ffffff,webp=1`]]"/>
		<p class="content">[+col1+]</p>
	</a>
</li>