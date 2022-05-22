name:mm_rules
description:Настройки параметров backenda в ManagerManager
======
// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php
// example of how PHP is allowed - check that a TV named documentTags exists before creating rule

if ($modx->db->getValue($modx->db->select('count(id)', $modx->getFullTableName('site_tmplvars'), "name='documentTags'"))) {
	mm_widget_tags('documentTags', ' '); // Give blog tag editing capabilities to the 'documentTags (3)' TV
}
mm_widget_showimagetvs(); // Always give a preview of Image TVs


//Все страницы

mm_hideFields('content', '', '5,7,19,12,21,26,27,14,6,10'); // Скрываем блок контент там, где он не используется

mm_createTab('SEO', 'seo_inst', '', '', 'Набор инструментов для SEO оптимизации', '1000'); // Создаем таб SEO инструментов

mm_moveFieldsToTab('seoOverride, sitemap_changefreq, sitemap_exclude, sitemap_priority', 'seo_inst', '', ''); // Переместим элементы, относящиеся к настройке SEO

//Отзыв подробнее
mm_ddMultipleFields('img_orig_reviews', '', '13', 'field,field', 'Изображение большое,Изображение для превью 238x344 px. Если не задано то берется большое изображение', '300,300', '||', '::', 300, 100, 1, 1); //Вывод блока Оригинал отзыва
mm_ddCreateSection('Оригинал отзыва','img_orig_reviews','general','','13');//Создаем секцию Сертификаты
mm_ddMoveFieldsToSection('img_orig_reviews', 'img_orig_reviews','','13');//переместим поля в секцию Сертификат

//Главная
mm_ddMultipleFields('main-slider', '', '5', 'field,textarea,text', 'Изображение для фона слайда 1200x413 px,Текст подписи на слайде. Перенос на новую строку осуществляется тегом &lt;br/&gt;,Ссылка или id страницы в теге [~id~]', '400,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Слайдер на главной
mm_createTab('Слайдер', 'slider-main', '', '5', 'Изображения и тексты для слайдера на главной', '1000'); // Создаем таб Слайдер
mm_moveFieldsToTab('main-slider', 'slider-main', '', '5'); // Переместим элементы, относящиеся к табу Слайдер

mm_ddMultipleFields('dignity-main', '', '5', 'field,textarea', 'Изображение 54x54 px,Текст описания', '400,400', '||', '::', 300, 100, 0, 4); //Вывод инфографики "Наши преимущества" на главной
mm_createTab('Наши преимущества', 'dignity-main', '', '5', 'Иконки и тексты для инфографики Наши преимущества на главной', '1000'); // Создаем таб Наши преимущества
mm_moveFieldsToTab('dignity-main', 'dignity-main', '', '5'); // Переместим элементы, относящиеся к табу Наши преимущества

mm_ddMultipleFields('bottom_text_index', '', '5,15,19,21,26,27', 'text,textarea', 'Заголовок,Основной тект', '400,600', '||', '::', 300, 100, 1, 1); //Вывод текстового блока в нижней части сайта
mm_ddCreateSection('Нижний контентный блок','bottom_text_index','general','','5');//Создаем секцию Текстовый блок в нижней части сайта
mm_ddMoveFieldsToSection('bottom_text_index', 'bottom_text_index','','5');//переместим поля в секцию Текстовый блок в нижней части сайта

mm_ddMultipleFields('map_contacts_index', '', '5', 'text,textarea,text', 'Адрес,Телефоны,Email', '400,400,400', '||', '::', 300, 100, 1, 1); //Вывод контактной информации возле карты
mm_createTab('Контакты', 'contacts_index', '', '5', 'Контактная информация в блоке возле карты на главной и в верхней заглавной части сайта', '1000'); // Создаем таб Контакты
mm_moveFieldsToTab('map_contacts_index', 'contacts_index', '', '5'); // Переместим элементы, относящиеся к табу Контакты
mm_ddCreateSection('Контактная информация возле карты','map_contacts_index','contacts_index','','5');//Создаем секцию Контактная информация возле карты
mm_ddMoveFieldsToSection('map_contacts_index', 'map_contacts_index','','5');//переместим поля в секцию Контактная информация возле карты

mm_ddMultipleFields('header_contacts', '', '5', 'textarea,text,text,text', 'Телефоны,Адрес,Email,Телефон в меню появляющемся при прокрутке страницы', '300,300,300,300', '||', '::', 300, 100, 1, 1); //Вывод контактной информации в верхней части сайта
mm_ddCreateSection('Контактная информация в верхней части сайта','header_contacts','contacts_index','','5');//Создаем секцию Контактная информация в верхней части сайта
mm_ddMoveFieldsToSection('header_contacts', 'header_contacts','','5');//переместим поля в секцию Контактная информация в верхней части сайта

//Контакты
mm_ddMultipleFields('company_details_contacts', '', '12', 'textarea,text,textarea,text', 'Реквизиты,Адрес,Телефоны,Email', '300,300,300,300', '||', '::', 300, 100, 1, 1); //Вывод контактной информации в верхней части сайта
mm_ddCreateSection('Контактная информация компании','company_details_contacts','general','','12');//Создаем секцию Контактная информация компании
mm_ddMoveFieldsToSection('company_details_contacts', 'company_details_contacts','','12');//переместим поля в секцию Контактная информация компании

//Товар подробное описание
mm_renameField('content', 'Подробное описание товара', '', '20', 'Введите текст');//Текст с подробным описанием товара

mm_ddCreateSection('Описание товара','product_description','general','','20');//Создаем секцию Описание товара
mm_ddMoveFieldsToSection('min-description-block,content,product_charact', 'product_description','','20');//переместим поля в секцию Описание товара

mm_ddMultipleFields('dignity_product', '', '20', 'select,field,textarea,text,textarea', 'Вид блока,Иконка преимущества 54x54 px,Текст подписи к преимуществу. Перенос на новую строку осуществляется тегом &lt;br/&gt;,Заголовок блока Акции,Краткое описание акции. Перенос на новую строку осуществляется тегом &lt;br/&gt;', '300,300,300,300,300', '||', '::', 300, 100, 0, 4,'[["dignity","Преимущество"],["stock","Акция"]]'); //Вывод блока преимущества товара
mm_createTab('Преимущества товара', 'dignity_product', '', '20', 'Информация о преимуществах товара и компании или же информация о скидках', '1000'); // Создаем таб Преимущества товара
mm_moveFieldsToTab('dignity_product', 'dignity_product', '', '20'); // Переместим элементы, относящиеся к табу Преимущества товара

mm_ddMultipleFields('product_gallery', '', '20,28', 'field,field', 'Изображение для слайда большое,Изображение для превью слайда малое - 330x168 px при наличии блока с характеристиками товара и 400x203 px при отсутствии блока. Если не задано то используется большое изображение', '400,400', '||', '::', 300, 100, 0, 0); //галерея описание товара подробнее
mm_createTab('Галерея изображений', 'product_gallery', '', '20,28', 'Изображения для отображения в галерее на страницах услуги подробнее', '1000'); // Создаем таб Галерея изображений
mm_moveFieldsToTab('product_gallery', 'product_gallery', '', '20,28'); // Переместим элементы, относящиеся к табу Галерея изображений

mm_ddMultipleFields('sizes_and_prices_prod_small', '', '20', 'text,text,text,text', 'Размер первый,Размер второй,Размер третий,Цена в новом формате', '300,300,300,300', '||', '::', 300, 100, 0, 0); //блок Размерность и цены малый верхний
mm_createTab('Размерность и цены', 'sizes_and_prices', '', '20', 'Размерность и стоимость этого размера', '1000'); // Создаем таб Размерность и цены
mm_moveFieldsToTab('sizes_and_prices_prod_small,size_range_big_bottom', 'sizes_and_prices', '', '20'); // Переместим элементы, относящиеся к табу Размерность и цены
mm_ddCreateSection('Размерность и цены блок малый верхний','sizes_and_prices_prod_small','sizes_and_prices','','20');//Создаем секцию Размерность и цены блок малый верхний
mm_ddMoveFieldsToSection('sizes_and_prices_prod_small', 'sizes_and_prices_prod_small','','20');//переместим поля в секцию Размерность и цены блок малый верхний


mm_ddMultipleFields('size_range_big_bottom', '', '20', 'text,text,text,select', 'Наименование,Размер,Цена руб за м.п.,Единица измерения', '300,300,300,300', '||', '::', 300, 100, 0, 0, '[["рулон","Рулон"],["мешок","Мешок"],["лист","Лист"],["метр квадратный","Метр квадратный"],["метр погонный","Метр погонный"],["метр кубический","Метр кубический"],["штук","Штука"],["лист","Литр"],["тонна","Тонна"],["грамм","Грамм"],["килограмм","Килограмм"]]'); //блок Размерный ряд
mm_ddCreateSection('Размерный ряд блок большой нижний','size_range_big_bottom','sizes_and_prices','','20');//Создаем секцию Размерный ряд
mm_ddMoveFieldsToSection('size_range_big_bottom', 'size_range_big_bottom','','20');//переместим поля в секцию Размерный ряд

mm_ddCreateSection('Стоимость товара','price','general','','20');//Создаем секцию Стоимость товара
mm_ddMoveFieldsToSection('price,price_no_sale', 'price','','20');//переместим поля в секцию Стоимость товара