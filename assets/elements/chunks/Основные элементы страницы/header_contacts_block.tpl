name:header_contacts_block
description:блок с контактной информацией в верхней части сайта
======
<div class="container">
	<div class="uk-grid ">
		<div class="logo uk-width-2-10">
			[[if? &is=`[*id*]:not:1` &then=`<a href="/"><img src="assets/templates/belarmmet/img/logo.png" alt=""/></a>`
			&else=`<img src="assets/templates/belarmmet/img/logo.png" alt=""/>`]]
		</div>
		<div class="uk-width-4-10">
			<div class="uk-grid uk-grid-small">
				<div class="uk-width-1-2">
					<div class="second-grid-block">
						<div class="img-block"><img src="assets/templates/belarmmet/img/header-icons-phone.png" alt=""/></div>
						<div class="content">
							<p><a href="tel:+375296477116" style="color: #636363;">+375 (29) 647 71 16</a></p>
						</div>
					</div>
				</div>
				<div class="uk-width-1-2">
					<div class="second-grid-block">
						<div class="img-block"><img src="assets/templates/belarmmet/img/header-icons-point.png" alt=""/></div>
						<div class="content">
							<p>Адрес: 220039 г.Минск ул.Казинца,12A</p>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="uk-width-4-10">
			<div class="uk-grid uk-grid-small">
				<div class="uk-width-1-2">
					<div class="second-grid-block">
						<div class="img-block"><img src="assets/templates/belarmmet/img/header-icons-email.png" alt=""/></div>
						<div class="content">
							<p>[[ddGetMultipleField? &inputString_docField=`header_contacts` &inputString_docId=`1` &rowTpl=`@CODE:[+col2+]`]]</p>
						</div>
					</div>
				</div>
				<div class="uk-width-1-2"><a href="#order" data-uk-modal class="primary-button" data-order="Заявка отправлена со страницы - [*pagetitle*]">Оставить
					заявку</a></div>
			</div>
		</div>
	</div>
</div>