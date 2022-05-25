name:map_contacts_index
description:Контакты блок на главной
======
<div class="uk-grid uk-grid-collapse">
	<div class="map-contact uk-width-large-4-10">
		<div class="wrap">
			<div class="main-title">
				<h2 class="title">Контактная информация</h2>
			</div>
			[[ddGetMultipleField? &inputString_docField=`map_contacts_index` &rowTpl=`map_contacts_index_tpl`]]
		</div>
	</div>
	<div class="uk-width-large-6-10" id="map"></div>
</div>
