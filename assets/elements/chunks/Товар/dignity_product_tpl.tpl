name:dignity_product_tpl
description:Шаблон вывода элемента преимущества товара
======
[[if? &is=`[+img_prew_reviews+]:!=:"stock"` &then=`
<li>
	<div class="wrap">
		<img src="[[phpthumb? &input=`[+col1+]` &options=`w=54,h=54,f=webp,q=84,far=C,bg=ffffff,webp=1`]]" alt=""/>
		[+col2+]
	</div>
</li>` &else=`
<li>
	<div class="wrap wrap-sale">
		<p class="title">[+col3+]</p>
		<p>[+col4+]</p>
	</div>
</li>
`]]