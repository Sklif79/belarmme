name:Прайс-Лист
description:Price
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
			<div class="main-title main-title__margin main-title__flex">
				<h1 class="title">[*pagetitle*]</h1>
				[[if? &is=`[*price_file*]:isempty` &then=`` &else=`
				<a href="[*price_file*]" class="download-price">
					<span>Скачать прайс</span>
					<img src="assets/templates/belarmmet/img/folder.png" alt=""/>
				</a>
				`]]
			</div>
			[[DocLister? 
			&id=`price_group` 
			&tpl=`price_group_tpl` 
			&orderBy=`menuindex ASC`
			&tvPrefix=`` 
			&tvList=`left_text_block_price,right_text_block_price`
			]]
		</div>
		<footer class="footer">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_block}}
		</div>
	</body>
</html>