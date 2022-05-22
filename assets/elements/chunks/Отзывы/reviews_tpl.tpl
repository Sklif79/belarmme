name:reviews_tpl
description:шаблон вывода превью отзывов
======
<li>
	<a href="[+url+]" class="comment-outside-block">
		<div class="uk-grid">
			<div class="uk-width-2-3">
				<div class="title">[+pagetitle+]</div>
				<div class="content">
					[+introtext+]
				</div>
			</div>
			<div class="uk-width-1-3"><img src="[[if? &is=`[+img_prew_reviews+]:isempty` &then=`assets/templates/belarmmet/img/no-img.jpg` &else=`[[phpthumb? &input=`[+img_prew_reviews+]` &options=`w=138,h=195,f=webp,q=84,far=C,bg=ffffff,webp=1`]]`]]" alt="[+pagetitle+]"/></div>
		</div>
	</a>
</li>