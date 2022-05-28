name:header
description:Верхняя (заглавная) часть страницы
======
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MNL5BTS"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<header class="header uk-visible-large" id="header">
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
<header class="header-mobile uk-hidden-large">
    <div class="header-mobile__inner">
        <button class="header-mobile__burger" type="button">
            <span class="header-mobile__burger-inner"></span>
        </button>
        <a href="/" class="header-mobile__logo">
            <img src="/assets/templates/belarmmet/img/logo.png" alt="logo" title="">
        </a>
        <button class="header-mobile__magnifier" type="button">
            <span class="uk-icon uk-text-contrast" uk-icon="search">
                <svg width="28" height="28" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg" data-svg="search">
                    <circle fill="none" stroke="currentColor" stroke-width="1.1" cx="9" cy="9" r="7"></circle>
                    <path fill="none" stroke="currentColor" stroke-width="1.1" d="M14,14 L18,18 L14,14 Z"></path>
                </svg>
            </span>
        </button>
    </div>
    <form class="header-mobile__search uk-hidden-large" data-uk-search action="[~50~]">
        <label>
            <input type="search" placeholder="Поиск по сайту" required pattern='[A-Za-zА-Яа-яЁё0-9]{3,50}' name='s'>
        </label>
        <button type="submit"><i class="uk-icon-search"></i></button>
    </form>
</header>
<nav class="nav-mobile uk-hidden-large">
    <div class="nav-mobile__inner">
        {{top-bar-menu}}
    </div>
</nav>
<div class="header-scrollspy uk-visible-large">
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
