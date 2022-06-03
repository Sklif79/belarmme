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
        <div class="uk-flex uk-flex-center">
            <a href="#callback" data-uk-modal="" class="header-mobile__phone uk-margin-right">
                <span class="uk-icon uk-text-contrast" uk-icon="receiver">
                    <svg width="28" height="28" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg" data-svg="receiver">
                        <path fill="none" stroke="currentColor" stroke-width="1.01" d="M6.189,13.611C8.134,15.525 11.097,18.239 13.867,18.257C16.47,18.275 18.2,16.241 18.2,16.241L14.509,12.551L11.539,13.639L6.189,8.29L7.313,5.355L3.76,1.8C3.76,1.8 1.732,3.537 1.7,6.092C1.667,8.809 4.347,11.738 6.189,13.611"></path>
                    </svg>
                </span>
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
        <nav class="top-bar-menu uk-grid-width-large-2-3">
            <ul>
                <li>
                    <a href="/catalog.html" title="Каталог">
                        Каталог
                        <div class="nav-mobile__catalog--arrow">
                            <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                            </svg>
                        </div>
                    </a>
                    <ul class="nav-mobile__catalog">
                        <li>
                            <a href="/catalog/vorota.html">
                                Ворота
                                <div class="nav-mobile__catalog--arrow">
                                    <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                    </svg>
                                </div>
                            </a>
                            <ul class="nav-mobile__catalog">
                                <li>
                                    <a href="/catalog/vorota/vorota-vezdnye.html">
                                        Въездные ворота
                                        <div class="nav-mobile__catalog--arrow">
                                            <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                            </svg>
                                        </div>
                                    </a>
                                    <ul class="nav-mobile__catalog">
                                        <li><a href="/catalog/vorota/vorota-vezdnye/zapolnenie-setka-rabica.html">Въездные ворота из сетки рабица</a></li>
                                        <li><a href="/catalog/vorota/vorota-vezdnye/zapolnenie-proflist.html">Ворота из профнастила</a></li>
                                        <li><a href="/catalog/vorota/vorota-vezdnye/zapolnenie-evroshtaketnik.html">Ворота из штакетника</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="/catalog/vorota/vorota-vezdnye-otkatnye.html">
                                        Откатные ворота
                                        <div class="nav-mobile__catalog--arrow">
                                            <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                            </svg>
                                        </div>
                                    </a>
                                    <ul class="nav-mobile__catalog">
                                        <li><a href="/catalog/vorota/vorota-vezdnye-otkatnye/zapolnenie-proflist.html">Откатные ворота из профнастила</a></li>
                                        <li><a href="/catalog/vorota/vorota-vezdnye-otkatnye/zapolnenie-setka-svarnaya-3d.html">Въездные откатные ворота из сетки</a></li>
                                        <li><a href="/catalog/vorota/vorota-vezdnye-otkatnye/raspashnye-vorota.html">Распашные ворота</a></li>
                                        <li><a href="/catalog/vorota/vorota-vezdnye-otkatnye/avtomaticheskie-otkatnye-vorota.html">Автоматические откатные ворота</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="/catalog/vorota/vorota-garazhnye.html">
                                        Гаражные ворота
                                        <div class="nav-mobile__catalog--arrow">
                                            <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                            </svg>
                                        </div>
                                    </a>
                                    <ul class="nav-mobile__catalog">
                                        <li><a href="/catalog/vorota/vorota-garazhnye/garazhnye-raspashnye-vorota.html">Распашные гаражные ворота</a></li>
                                        <li><a href="/catalog/vorota/vorota-garazhnye/sekcionnye-garazhnye-vorota.html">Секционные гаражные ворота</a></li>
                                        <li><a href="/catalog/vorota/vorota-garazhnye/garazhnye-vorota-iz-profnastila.html">Гаражные ворота из профнастила</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="/catalog/kalitki.html">Калитки</a></li>
                        <li>
                            <a href="/catalog/zabory.html">
                                Заборы
                                <div class="nav-mobile__catalog--arrow">
                                    <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                    </svg>
                                </div>
                            </a>
                            <ul class="nav-mobile__catalog">
                                <li><a href="/catalog/zabory/zabor-iz-ocinkovannoj-setki-rabica.html">Заборы из сетки рабицы</a></li>
                                <li><a href="/catalog/zabory/zabor-iz-ocinkovannoj-v-pvh-setki-rabica.html">Забор из сетки рабица ПВХ</a></li>
                                <li><a href="/catalog/zabory/zabor-iz-svarnoj-setki-3d.html">3Д заборы в Минске</a></li>
                                <li><a href="/catalog/zabory/zabor-sekcionnyj.html">Забор секционный</a></li>
                                <li><a href="/catalog/zabory/zabor-iz-proflista.html">Забор из профнастила</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/catalog/setka-rabica.html">
                                Сетка
                                <div class="nav-mobile__catalog--arrow">
                                    <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                    </svg>
                                </div>
                            </a>
                            <ul class="nav-mobile__catalog">
                                <li>
                                    <a href="/catalog/setka-rabica/setka-rabica.html">
                                        Сетка рабица
                                        <div class="nav-mobile__catalog--arrow">
                                            <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                            </svg>
                                        </div>
                                    </a>
                                    <ul class="nav-mobile__catalog">
                                        <li><a href="/catalog/setka-rabica/setka-rabica/ocinkovannaya.html">Сетка рабица оцинкованная</a></li>
                                        <li><a href="/catalog/setka-rabica/setka-rabica/obyknovennaya.html">Сетка рабица стальная</a></li>
                                        <li><a href="/catalog/setka-rabica/setka-rabica/s-pvh-pokrytiem.html">Сетка рабица с полимерным покрытием (ПВХ)</a></li>
                                        <li><a href="/catalog/setka-rabica/setka-rabica/setka-rabica-optom.html">Сетка рабица оптом</a></li>
                                        <li><a href="/catalog/setka-rabica/setka-rabica/proizvodstvo-setki-rabica.html">Производство сетки рабица</a></li>
                                        <li><a href="/catalog/setka-rabica/setka-rabica/setka-rabica-ocinkovannaya-v-pvh.html">Сетка рабица оцинкованная в пвх</a></li>
                                        <li><a href="/catalog/setka-rabica/setka-rabica/nedorogaya-setka-rabica.html">Недорогая сетка рабица</a></li>
                                        <li><a href="/catalog/setka-rabica/setka-rabica/setka-rabica-s-dostavkoj.html">Сетка рабица с доставкой</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="/catalog/setka-rabica/setka-svartaya.html">
                                        Сетка сварная
                                        <div class="nav-mobile__catalog--arrow">
                                            <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                            </svg>
                                        </div>
                                    </a>
                                    <ul class="nav-mobile__catalog">
                                        <li><a href="/catalog/setka-rabica/setka-svartaya/armaturnaya.html">Арматурная сетка</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="/catalog/stolby.html">
                                Столбы для забора
                                <div class="nav-mobile__catalog--arrow">
                                    <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                    </svg>
                                </div>
                            </a>
                            <ul class="nav-mobile__catalog">
                                <li><a href="/catalog/stolby/profilnye.html">Профильные столбы для забора</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/catalog/metalloprokat.html">
                                Металлопрокат
                                <div class="nav-mobile__catalog--arrow">
                                    <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <polyline fill="none" stroke="currentColor" stroke-width="1.03" points="16 7 10 13 4 7"></polyline>
                                    </svg>
                                </div>
                            </a>
                            <ul class="nav-mobile__catalog">
                                <li><a href="/catalog/metalloprokat/truba-profilnaya.html">Труба профильная</a></li>
                            </ul>
                        </li>
                        <li><a href="/catalog/dobornye-elementy.html">Доборные элементы</a></li>
                    </ul>
                </li>
                <li><a href="/ustanovka-zaborov.html" title="Установка забора">Установка забора</a></li>
                <li><a href="/contacts.html" title="Контакты">Контакты</a></li>
                <li><a href="/dostavka-po-rb.html" title="Доставка">Доставка</a></li>
                <li><a href="/reviews.html" title="Отзывы">Отзывы</a></li>
                <li><a href="/articles.html" title="Статьи">Статьи</a></li>
                <li><a href="/price.html" title="Цены">Цены</a></li>
                <li><a href="/sale.html" title="Акции">Акции</a></li>
            </ul>
        </nav>
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
