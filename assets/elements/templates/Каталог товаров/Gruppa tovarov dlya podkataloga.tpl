name:Группа товаров для подкаталога
description:Product_group_subcatalog
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
			<div class="main-title main-title__margin">
				<h1>[*pagetitle*]</h1>
			</div>
		</div>
		<div class="gate-catalog">
			<div class="container">

				<ul class="margin-li uk-grid uk-grid-medium uk-grid-width-1-5 product-block" data-uk-grid-match="{target:'.wrap'}">
					[[Ditto? 
					&id=`prodgroup` 
					&tpl=`popular_products_tpl` 
					&orderBy=`menuindex ASC`
					]]
				</ul>
			</div>
		</div>

		{{bottom_catalog_content_block}}
		<footer class="footer">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_block}}
		</div>
	</body>
</html>