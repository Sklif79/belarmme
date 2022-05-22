name:Подкаталог
description:Subcatalog
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
		[[DocLister?
		&id=`prodsubcat` 
		&tpl=`prod_subcat_tpl`
		&orderBy=`menuindex ASC`
		&tvPrefix=`` 
		&tvList=`img_prew_subcat_group`
		]]
		{{bottom_catalog_content_block}}
		<footer class="footer">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_block}}
		</div>
	</body>
</html>