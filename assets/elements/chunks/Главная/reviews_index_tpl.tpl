name:reviews_index_tpl
description:шаблон вывода отзыва на главной
======
<li>
	<div class="review-block">
		<div class="uk-grid">
			<div class="uk-width-2-3">
				<p class="title">[+pagetitle+]</p>

				<p class="content">
					[+introtext+]
				</p>
			</div>
			[[ddGetMultipleField? &inputString_docField=`img_orig_reviews` &inputString_docId=`[+id+]` &rowTpl=`img_index_reviews_tpl`]]
		</div>
	</div>
</li>