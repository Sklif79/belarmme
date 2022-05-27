name:form_reviews
description:Форма оставить отзыв
======
<form class="contact-form-block margin-tb">
	<h3>Оставить свой отзыв</h3>

	<div class="wrap-padding">
		<div class="uk-grid uk-grid-width-large-1-4">
			<label>
				<input class="name" type="text" placeholder="Введите ваше имя"/>
			</label>
			<label>
				<input class="email" type="text" placeholder="Введите ваш email"/>
			</label>
			<label>
				<p class="file" id="text-file"> Добавить фотографию</p>
			</label>

			<div class="uk-form-file">
				<button class="uk-button button-file">загрузить фотографию отзыва</button>
				<input type="file" id="file">
			</div>
		</div>
		<textarea class="comment" placeholder="Введите ваше сообщение"></textarea>

		<div class="btn-form"><a href="#" class="primary-button">Отправить</a></div>
	</div>
</form>
