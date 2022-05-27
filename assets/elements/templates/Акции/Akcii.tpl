name:Акции
description:Sale
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
	</head>
	<body>
		{{header}}
		{{breadcrumbs}}
		<div class="container medium-padding-bottom">
			<div class="main-title main-title__margin">
				<h1 class="title">[*pagetitle*]</h1>
			</div>
			<div class="sale-outside">
				<ul class="uk-grid uk-grid-width-large-1-3" data-uk-grid-match="{target:'.wrap'}">
					[[DocLister?
					&id=`sale`
					&tpl=`sale_prew_tpl`
					&orderBy=`menuindex ASC`
					&tvPrefix=``
					&tvList=`sale_img_prew,sale_last_date`
					]]
				</ul>
			</div>
		</div>
		<footer class="footer">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_block}}
		</div>
	</body>
</html>
