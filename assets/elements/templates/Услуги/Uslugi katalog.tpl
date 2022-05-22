name:Услуги каталог
description:Services catalog
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
				<h2 class="title">[*pagetitle*]</h2>
			</div>
			<div class="uk-margin-bottom">
				[*content*]
			</div>
			<div class="services-catalog">
				<ul class="uk-grid uk-grid-width-1-2">
					[[DocLister? 
					&id=`services`
					&tpl=`services_tpl`
					&orderBy=`menuindex ASC`
					&tvPrefix=`` 
					&tvList=`img_prew_serv_back,img_prew_serv_icon`
					]]
				</ul>
			</div>
		</div>
		{{bottom_content_block}}
		<footer class="footer">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_block}}
		</div>
	</body>
</html>