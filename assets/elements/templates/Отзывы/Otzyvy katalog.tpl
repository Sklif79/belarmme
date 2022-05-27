name:Отзывы каталог
description:Reviews
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
			<div class="comment-outside">
				<ul class="uk-grid uk-grid-width-large-1-2">
					[!Ditto? &id=`reviews` &display=`4` &paginate=`1` &tplPaginateNext=`next_pagin_tpl` &tplPaginatePrevious=`prev_pagin_tpl` &tpl=`reviews_tpl` &orderBy=`menuindex DESC`!]
				</ul>
			</div>
			<div class="pagination">
				<ul>
					[+reviews_previous+][!splitPagination? &id=`reviews` &pagesToShow=`8` &constantEndCount=`2`  &tplCurrent=`cur_page` &tplPageLink=`tplPageLink` &ellipses=`ellipses_tpl` &return=`1`!][+reviews_next+]
				</ul>
			</div>
			{{form_reviews}}
		</div>
		<footer class="footer">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_block}}
		</div>
	</body>
</html>
