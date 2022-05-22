name:Услуга подробнее
description:Service_inside
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
			<div class="article-inside">
				[[if? &is=`[*article_img_left_big*]:isempty` &then=`` &else=`<img src="[[phpthumb? &input=`[*article_img_left_big*]` &options=`w=363,h=205,f=webp,q=84,far=C,bg=ffffff,webp=1`]]" class="article-img-left" alt=""/>`]]
				[*content*]
			</div>
			<div class="back-page">
				<a href="[~17~]" class="primary-button">Вернуться к списку услуг</a>
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