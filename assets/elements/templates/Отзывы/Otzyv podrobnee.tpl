name:Отзыв подробнее
description:Reviews_inside
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
				<h1 class="title">детальный отзыв</h1>
			</div>
			<div class="comment-inside">
				<div class="uk-grid">
					[[ddGetMultipleField? &inputString_docField=`img_orig_reviews` &rowTpl=`img_orig_reviews_tpl`]]
					<div class="uk-width-4-5">
						<div class="title">[*pagetitle*]</div>
						<div class="content">
							[*content*]
						</div>
					</div>
				</div>
			</div>
			<div class="back-page">
				<a href="[~[*parent*]~]" class="primary-button">Вернуться к списку отзывов</a>
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