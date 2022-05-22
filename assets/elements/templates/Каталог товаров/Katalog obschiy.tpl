name:Каталог общий
description:Catalog
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
				<h1 class="title">[*pagetitle*]</h1>
			</div>
		</div>
		<div class="main-catalog bg-white-text">
			<div class="container">
				<ul class="catalog-level-one uk-grid uk-grid-width-1-4 uk-grid-collapse">
					[[DocLister? 
					&id=`catalog`
					&tpl=`catalog_tpl` 
					&orderBy=`menuindex ASC`
					&tvPrefix=`` 
					&tvList=`img_catalog_prev`
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