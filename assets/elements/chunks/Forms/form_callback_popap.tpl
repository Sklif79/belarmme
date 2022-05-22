name:form_callback_popap
description:Всплывающая форма "Заказать обратный звонок"
======
<div id="callback" class="uk-modal">
	<div class="uk-modal-dialog">
		<form action="form_mail.php" method="post" id="form_callback" class="fr-callback">
			<a class="uk-modal-close">&times;</a>

			<h3>Заказать обратный звонок</h3>
			<label>
				Введите ваше имя: <br/>
				<input name="name" type="text" tabindex="201" placeholder="Введите имя..."/>
			</label>
			<label>
				Введите ваш телефон: <br/>
				<input name="phone" type="tel" tabindex="202" placeholder="Введите телефон..."/>
			</label>
			<label class="dispn">
				Ваш email для обратной связи: <br/>
				<input name="email_back" type="email" tabindex="203" placeholder="Введите email для обратной связи..."/>
			</label>
			<label>
				Выберите удобное время для звонка: <br/>
				<input name="call_time" type="text" tabindex="204" placeholder="Выберите время" data-uk-timepicker>
			</label>

			<div class="btn-form">
				<input type='hidden' name='type_form' value="2" />
				<button class="primary-button" type="submit" >Отправить</button>
			</div>
		</form>
	</div>
</div>