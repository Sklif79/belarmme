name:Карточка товара
description:Product_inside
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
	</head>
	<body>
		{{header}}
		{{breadcrumbs}}
		<div class="container">
			<h1 class="product-title">[*pagetitle*]</h1>

			<div class="top-info-product">
				<div class="uk-grid uk-grid-width-1-2">
					<div class="img uk-position-relative">
						<img src="[[phpthumb? &input=`[*big_product_img*]` &options=`w=553,h=480,f=webp,q=84,far=C,bg=ffffff,webp=1`]]" alt="Изображение товара [*pagetitle*]"/>
						<div class="product-icons">
							[[if? &is=`[*novelty*]:=:1` &then=`<div class="new" title="Новинка"></div>`]]
							[[if? &is=`[*bestseller*]:=:1` &then=`<div class="hit" title="Хит продаж"></div>`]]
							[[if? &is=`[*sale*]:=:1` &then=`<div class="sale" title="Скидка"></div>`]]
						</div>
					</div>
					<div class="info-product">
						{{price-block}}
						<div class="min-description-block">
							[*min-description-block*]
						</div>
						<div class="scroll-description"><a href="#full-description-product" class="more" data-uk-smooth-scroll="{offset: 80}">Подробное описание</a></div>
						{{small_characteristic_price}}
						{{order_service_turnkey}}
					</div>
				</div>
			</div>
		</div>
		{{dignity_product}}

		{{characteristic_and_gallery_block}}

		<div id="full-description-product" class="description-product">
			<div class="container">
				<h4 class="title-product">Описание</h4>
				[*content*]
			</div>
		</div>
		{{full-characteristic-price}}
		{{popular-products}}
		<footer class="footer">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_block}}
		</div>
	</body>
</html>