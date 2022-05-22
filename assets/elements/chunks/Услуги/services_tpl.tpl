name:services_tpl
description:Шаблон вывода превью услуг
======
<li>
	<a href="[+url+]" class="services-bg" style="background-image: url('[[phpthumb? &input=`[+img_prew_serv_back+]` &options=`w=586,h=384,f=webp,q=84,zc=C,bg=ffffff,webp=1`]]')">
		<div class="content">
			<div class="img"><img src="[[phpthumb? &input=`[+img_prew_serv_icon+]` &options=`w=45,h=45,f=webp,q=84,far=C,bg=ffffff,webp=1`]]" alt="[+pagetitle+]"/></div>
			<h3 class="title">[+pagetitle+]</h3>
			<p>
				[+introtext+]
			</p>
		</div>
	</a>
</li>