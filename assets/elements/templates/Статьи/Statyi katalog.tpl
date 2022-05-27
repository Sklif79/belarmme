name:Статьи каталог
description:Articles_catalog
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
			<div class="article-outside">
				<ul class="uk-grid uk-grid-width-small-1-2 uk-grid-width-large-1-4" data-uk-grid-match="{target:'.wrap'}">
					[!Ditto? &id=`articles` &display=`8` &paginate=`1` &tplPaginateNext=`next_pagin_tpl` &tplPaginatePrevious=`prev_pagin_tpl` &tpl=`articles_tpl` &orderBy=`menuindex DESC`!]
				</ul>
			</div>
			<div class="pagination">
				<ul>
[+articles_previous+][!splitPagination? &id=`articles` &pagesToShow=`8` &constantEndCount=`2`  &tplCurrent=`cur_page` &tplPageLink=`tplPageLink` &ellipses=`ellipses_tpl` &return=`1`!][+articles_next+]
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
