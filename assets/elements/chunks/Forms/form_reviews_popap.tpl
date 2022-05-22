name:form_reviews_popap
description:Форма попап "Оставить отзыв"
======
<div id="reviews" class="uk-modal">
	<div class="uk-modal-dialog">
		<form action="form_mail.php" method="post" id="form_reviews_popup" class="fr-callback">
			<a class="uk-modal-close">&times;</a>

			<h3>Оставить отзыв</h3>
			<label>
				Введите ваше имя: <br/>
				<input name="name" type="text" tabindex="301" placeholder="Введите имя..."/>
			</label>
			<label>
				Введите ваш email: <br/>
				<input class="email" name="email" type="email" tabindex="302" placeholder="Введите email..."/>
			</label>
			<label class="dispn">
				Ваш email для обратной связи: <br/>
				<input name="email_back" type="email" tabindex="303" placeholder="Введите email для обратной связи..."/>
			</label>
			<label>
				Введите отзыв: <br/>
				<textarea name="message" tabindex='304' cols="30" rows="10" placeholder="Введите сообщение..."></textarea>
			</label>

			<div class="btn-form">
				<input type='hidden' name='type_form' value="3" />
				<button class="primary-button" type="submit">Отправить</button>
			</div>
		</form>
	</div>
</div>