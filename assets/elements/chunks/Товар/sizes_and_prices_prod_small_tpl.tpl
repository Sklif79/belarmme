name:sizes_and_prices_prod_small_tpl
description:шаблон вывода строк малого блока размеры и цены
======
<ul class="uk-grid uk-grid-width-large-1-6 uk-grid-collapse">
	<li>[+col0+]</li>
	<li>[+col1+]</li>
	<li>[+col2+]</li>
	<li>[[old_price_num_format? &new_price=`[+col3+]`]] руб.</li>
	<li>[+col3+] руб</li>
	<li><a href="#order" class="primary-button" data-uk-modal data-order='Заказать изделие [*pagetitle*] c размерами от [+col0+] до [+col2+]'>Заказать</a></li>
</ul>
