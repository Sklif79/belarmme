name:form_feedback
description:Форма обратной связи
======
<div class="uk-width-6-10">
	<form action="form_mail.php" method="post" id="form_feedback" class="contact-form-block" >
		<h3>Обратная связь</h3>
		<div class="wrap-padding">
			<div class="uk-grid uk-grid-width-1-3">
				<label>
					<input class="name"  name="name" type="text" tabindex="101" placeholder="Введите ваше имя"/>
				</label>
				<label>
					<input class="phone" name="phone" type="tel" tabindex="102" placeholder="Введите ваш телефон"/>
				</label>
				<label>
					<input class="email" name="email" type="email" tabindex="103" placeholder="Введите ваш email"/>
				</label>
				<label class="dispn">
					<input class="email" name="email_back" type="email" tabindex="104" placeholder="Введите email для обратной связи..."/>
				</label>
			</div>
			<textarea name="message" tabindex='105' class="comment" placeholder="Введите ваше сообщение"></textarea>
			<input type='hidden' name='type_form' value="1" />
			<div class="btn-form"><button class="primary-button" onclick="gtag('event', 'Контакты + клик Отправить', { 'event_category': 'contacts', 'event_action': 'click2', }); ">Отправить</button></div>
		</div>
	</form> 
</div>