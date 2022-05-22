name:sale_prew_tpl
description:шаблон превью скидки
======
<li class="item">
	<div class="wrap">
		<a href="[+url+]">
			<img class="img-responsive" src="[[phpthumb? &input=`[+sale_img_prew+]` &options=`w=395,h=223,f=webp,q=84,zc=C,bg=ffffff,webp=1`]]" alt="[+pagetitle+]"/>
		</a>
		[[if? &is=`[+sale_last_date+]:isempty` &then=`` &else=`<span>до [[convertDate? &type=`dhY` &PubDate=`[+sale_last_date+]`]]</span>`]]
		<p><a href="[+url+]">[+pagetitle+]</a></p>
	</div>
</li>