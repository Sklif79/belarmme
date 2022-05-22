name:Контакты
description:Contacts
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
			<div class="contact-form">
				<div class="uk-grid">
					{{company_details_contacts}}
					{{form_feedback}}
				</div>
			</div>
		</div>
		<div id="map" class="height-map"></div>
		<footer class="footer">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_block}}
		</div>
	</body>
</html>