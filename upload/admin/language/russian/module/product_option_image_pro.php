<?php

// Product Option Image PRO / Изображения опций PRO
// Support: support@liveopencart.com / Поддержка: help@liveopencart.ru

// Heading
$_['heading_title']       = 'Изображения опций PRO';
$_['poip_module_name']    = 'Изображения опций PRO';

// Text
$_['text_module']         = 'Модули';
$_['text_success']        = 'Настройки модуля "'.$_['heading_title'].'" успешно изменены!';
$_['text_content_top']    = 'Верх страницы';
$_['text_content_bottom'] = 'Низ страницы';
$_['text_column_left']    = 'Левая колонка';
$_['text_column_right']   = 'Правая колонка';

// Entry
$_['entry_settings']                  = 'Настройки модуля';
$_['entry_import']                    = 'Импорт';
$_['entry_import_description']        = '<b>Перед импортом изображений, все ранее добавленные изображения опций будут удалены.</b>
<br><br>Формат файла: XLS. Данные берутся с первого листа.
<br>В первой строке таблицы должны содержаться заголовки вида: product_id, option_value_id (не путать с product_option_id), image, sort_order (порядок изображений)
<br>Начиная со второй строки таблицы должны с данные соответствующие заголовкам';
$_['PHPExcelNotFound']                = 'Не обнаружен <a href="http://phpexcel.codeplex.com/" target="_blank">PHPExcel</a> (<a href="http://liveopencart.ru/phpexcel/" target="_blank">что такое PHPExcel?</a>). Отсутствует файл: ';
$_['button_upload']		                = 'Загрузить файл';
$_['button_upload_help']              = 'загрузка начнется сразу после выбора файла';
$_['entry_server_response']           = 'Ответ сервера';
$_['entry_import_result']             = 'Обработано строк/изображений/пропущено';
$_['entry_export']                    = 'Экспорт';
$_['button_export']		                = 'Экспортировать данные';
$_['entry_export_description']        = 'Экспорт изображений опций. Формат файла: XLS. Для экспорта данных используется только первый лист.
<br>В первую строку таблицы выгружаются заголовки: product_id, option_value_id (не путать с product_option_id), image, sort_order (порядок изображений)
<br>Начиная со второй строки таблицы выгружаются данные соответствующие заголовкам.
<br>В отдельную колонку дополнительно выгружается названия значений опций (для информации)';
$_['entry_export_products_wo_optimg'] = 'Включать в выгрузку товары без изображений опций';

$_['entry_layout']        = 'Схема:';
$_['entry_position']      = 'Расположение:';
$_['entry_status']        = 'Статус:';
$_['entry_sort_order']    = 'Порядок сортировки:';
$_['entry_sort_order_short']    = 'Порядок:';
$_['entry_settings_default']          = 'общая настройка';
$_['entry_settings_yes']          = 'Да';
$_['entry_settings_no']          = 'Нет';


$_['entry_img_use_v0']          = 'Нет';
$_['entry_img_use_v1']          = 'Для всех';
$_['entry_img_use_v2']          = 'Для выбранных';

$_['entry_img_first_v0']          = 'Стандартно';
$_['entry_img_first_v1']          = 'Заменить первым изображением опции';
$_['entry_img_first_v2']          = 'Добавить в список изображений опции';

// Entry Module Settings
$_['entry_img_change']          = 'Менять изображение товара при выборе опции';
$_['entry_img_change_help']     = 'менять главное изображение на странице товара при выборе значения опции (используется первое изображение опции в соответствии с указанным порядком сортировки)';
$_['entry_img_hover']           = 'Менять изображение товара при наведении мыши';
$_['entry_img_hover_help']      = 'менять главное изображение на странице товара при наведении указателя мыши на дополнительное изображение товара';
$_['entry_img_main_to_additional']           = 'Главное изображение в дополнительные';
$_['entry_img_main_to_additional_help']      = 'включать главное изображение товара в список дополнительных изображений';

$_['entry_img_use']             = 'Изображения опций в изображениях товара';
$_['entry_img_use_help']        = 'включить изображения добавленные для опций в список дополнительных изображений товара показываемых покупателю на странице товара';

$_['entry_img_limit']           = 'Фильтровать изображения при выборе опций';
$_['entry_img_limit_help']      = 'в списке дополнительных изображений товара показывать покупателю только изображения соответствующие выбранному значению опции (если для него добавлены изображения)<br>
работает только если включена опция "'.$_['entry_img_use'].'"';
$_['entry_img_gal']             = 'Ограничивать галерею изображений';
$_['entry_img_gal_help']        = 'показывать в галерее изображений на странице товара только те картинки, которые остались в списке изображений после фильтрации по выбранным значениям опций<br>
рекомендуется использовать если в шаблоне используется стантартный модуль галереи из OpenCart, когда включены опции "'.$_['entry_img_use'].'" и "'.$_['entry_img_limit'].'"';
$_['entry_img_option']          = 'Показывать изображения под опцией';
$_['entry_img_option_help']     = 'показывать под выбором значения опции на странице товара изображения соответсвующие выбранному значению';
//$_['entry_img_select']          = 'Выбор опций по изображениям';
//$_['entry_img_select_help']     = 'добавляет надпись "Выбрать" под каждым изображением опции в списке товаров, при клике на надпись соответствующая опция выбирается автоматически';
$_['entry_img_category']        = 'Опции в списках товаров';
$_['entry_img_category_help']   = 'выводить опции в списках товаров (в категории, в хитах продаж, в рекомендуемых, в последних, в акциях) с возможностью предпросмотра изображения и быстрого перехода в карточку с автоматическим выбором соответствующей опции';
//$_['entry_img_sort']            = 'Сквозная сортировка изображений';
//$_['entry_img_sort_help']       = 'сортировать изображения в соответствии с указанным порядком вне зависимости от опций к которым они привязаны';
$_['entry_img_first']           = 'Стандартное изображение опции';
$_['entry_img_first_help']      = 'определяет использование изображения значений опций добавленные на странице редактирования опций (меню Каталог - Опции - и т.д.)';
$_['entry_img_cart']            = 'Изображение опции в корзине';
$_['entry_img_cart_help']       = 'показывать изображения выбранных значений опций в корзине ';

$_['entry_img_or']              = 'Правило фильтрации ИЛИ';
$_['entry_img_or_help']         = 'при фильтрации изображений по нескольким опциям использовать ИЛИ вместо И';

$_['entry_show_settings']       = 'Показать индивидуальные настройки для выбранной опции товара';
$_['entry_hide_settings']       = 'Скрыть индивидуальные настройки для выбранной опции товара';

$_['entry_about']               = 'О модуле';
$_['entry_about_description']   = '
Модуль дает возможность добавлять изображения для опций товаров (одно или несколько для каждого значения опции)
и использовать их для расширения функционала карточки товара (менять видимые изображения в зависимости от выбранных опций) и списков товаров (показывать иконки опций).
<br>Поддерживаются опции типов "Список", "Переключатель", "Изображение" и "Флажок".
<br><br>Для работы модуля требуется <a href="http://github.com/vqmod/vqmod" target="_blank">vQmod</a> версии 2.4.1 или выше (<a href="http://liveopencart.ru/chto-takoe-vqmod/" target="_blank">что такое vQmod?</a>).
<br><br>Для работы функций импорта/экспорта требуется библиотека <a href="http://phpexcel.codeplex.com/" target="_blank">PHPExcel</a> (<a href="http://liveopencart.ru/phpexcel/" target="_blank">что такое PHPExcel?</a>).
<br><br><br>Есть вопросы по работе модуля? Требуется интеграция с шаблоном или доработка? Пишите: <b>opencart@19th19th.ru</b>.
<br><br><br>Также рекомендуем:
<ul>
<li>
<a href="http://liveopencart.ru/opencart-moduli-shablony/moduli/tsenyi/jivaya-tsena-dinamicheskoe-obnovlenie-tsenyi" title="Динамическое обновление цены - Живая цена для OpenCart/ocStore" target="_blank">
Динамическое обновление цены - Живая цена</a> - модуль для динамического обновления информации о цене на странице товара в зависимости от выбранных покупателем опций.
</li><br>
<li>
<a href="http://liveopencart.ru/opencart-moduli-shablony/moduli/prochee/svyazannyie-optsii" title="Связанные опции для OpenCart/ocStore" target="_blank">
Связанные опции</a> - модуль позволяющий создавать для товаров комбинации связанных опций и указывать для каждой комбинации отдельный остаток, цену, модель и другие данные. Может быть полезен для товаров, имеющих взаимозависимые опции, например, цвет и размер у одежды.
</li>
</ul>
';
$_['module_copyright'] = 'Модуль "'.$_['heading_title'].'" это коммерческое дополнение. Не выкладывайте его на сайтах для скачивания и не передавайте его копии другим лицам.<br>
Приобретая модуль, Вы приобретаете право его использования на одном сайте. <br>Если Вы хотите использовать модуль на нескольких сайтах, следует приобрести отдельную копию модуля для каждого сайта.<br>';


// Error
$_['error_permission']    = 'У Вас нет прав для изменения модуля "'.$_['heading_title'].'"!';


$_['module_info'] = '"'.$_['heading_title'].'" Версия 1.4.1 | Разработка: <a href="http://19th19th.ru" target="_blank">19th19th.ru</a> | Поддержка: help@liveopencart.ru';


?>