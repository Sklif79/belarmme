name:form_order_popap
description:Всплывающая форма заказать товар или услугу
======
<div id="order" class="uk-modal">
	<div class="uk-modal-dialog">
		<form  action="form_mail.php" method="post" id="form_order_popup" class="fr-callback">
			<a class="uk-modal-close">&times;</a>

			<h3>Заказать товар или услугу</h3>
			<label>
				Введите ваше имя: <br/>
				<input name="name" type="text" tabindex="401" placeholder="Введите имя..."/>
			</label>
			<label>
				Введите ваш телефон: <br/>
				<input name="phone" type="tel" tabindex="402" placeholder="Введите телефон..."/>
			</label>
			<label class="dispn">
				Ваш email для обратной связи: <br/>
				<input name="email_back" type="email" tabindex="403" placeholder="Введите email для обратной связи..."/>
			</label>
			<label>
				Выберите удобное время для звонка: <br/>
				<input name="call_time" type="text" tabindex="404" placeholder="Выберите время" data-uk-timepicker>
			</label>
			<label>
				Введите ваше сообщение: <br/>
				<textarea name="message" cols="30" rows="10" tabindex='505' placeholder="Введите сообщение..."></textarea>
			</label>

			<div class="btn-form">
				<input type='hidden' name='type_form' value="4" />
				<input type='hidden' name='name_service' value="" />
				<button class="primary-button" type="submit" >Отправить</button>
			</div>
		</form>
	</div>
</div>