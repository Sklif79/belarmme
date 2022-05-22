name:header
description:Верхняя (заглавная) часть страницы
======
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MNL5BTS"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<header class="header" id="header">
	<div class="top-bar">
		<div class="container">
			<div class="uk-grid">
				{{top-bar-menu}}
				<form class="search-block uk-text-right uk-width-1-3" data-uk-search action="[~50~]">
					<input type="search" placeholder="Поиск по сайту" required pattern='[A-Za-zА-Яа-яЁё-0-9]{3,50}' name='s'>
					<button type="submit"><i class="uk-icon-search"></i></button>
				</form>
			</div>
		</div>
	</div>
	<div class="center-bar">
		{{header_contacts_block}}
	</div>
	<nav class="main-menu">
		{{main-menu}}
	</nav>
</header>
<div class="header-scrollspy">
	<div class="container flex">
		<div class="logo">
			[[if? &is=`[*id*]:not:1` &then=`<a href="/"><img src="assets/templates/belarmmet/img/logo-min.png" alt=""/></a>`
			&else=`<img src="assets/templates/belarmmet/img/logo-min.png" alt=""/>`]]
		</div>
		{{menu-scroll}}
		<div class="phone">
			<p> [[ddGetMultipleField? &inputString_docField=`header_contacts` &inputString_docId=`1` &rowTpl=`@CODE:[+col3+]`]]</p>
		</div>
		<div><a href="#callback" data-uk-modal class="primary-button">Заказать звонок</a></div>
		<div class="btn-search" id="button-search-top"><i class="uk-icon-search"></i></div>
	</div>
	<form class="search-panel" id="search-panel-top">
        <div class="container flex-search-panel">
            <input type="text" placeholder="Поиск по сайту"/>
            <button type="submit">Найти</button>
            <span class="close">&times;</span>
        </div>
    </form>
</div>