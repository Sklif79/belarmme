name:Карта сайта
description:Sitemap
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
	</head>
	<body>
		{{header}}
		{{breadcrumbs}}
		<div class="container large-padding-bottom">
			<div class="main-title main-title__margin">
				<h1 class="title">[*pagetitle*]</h1>
			</div>
			<div class="sitemap">
				[[Wayfinder? &startId=`0` &ignoreHidden=`0` &outerClass=`tree` &excludeDocs=`` &level=`6` &sortBy=`menuindex` ]]
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