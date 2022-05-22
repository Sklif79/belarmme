name:Результаты поиска
description:Search result
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
			<div class="search-page">
				<form class="search-panel-gh" action="[~50~]">
					<div class="container search-result flex-search-panel">
						<input type="text" placeholder="Поиск по сайту..." required pattern='[A-Za-zА-Яа-яЁё-0-9]{3,50}' name='s'/>
						<button type="submit" class="primary-button">Найти</button>
					</div>
				</form>
				[!search_rez!]
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