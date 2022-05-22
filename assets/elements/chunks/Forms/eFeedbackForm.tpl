name:eFeedbackForm
description:<strong>1.0</strong> eFeedbackForm Шаблон формы обратной связи
======
<p><span style="color:#900;">[+validationmessage+]</span></p>

<form  class="eform" method="post" action="[~[*id*]~]">

<input type="hidden" name="formid" value="feedbackForm" />
<input value="" name="special" class="special" type="text" eform="Спец:date:0"  style="display:none;" />
<p>
    <input type="text" name="name" id="name" class="grid_3" value=""  eform="Имя:string:1"/>
    <label for="name">Ваше имя</label>
</p>
            
<p>
    <input type="text" name="email" id="email" class="grid_3" value="" eform="E-mail:email:1" />
    <label for="email">Ваш E-mail</label>
</p>
            
<p>
    <input type="text" name="phone" id="subject" class="grid_3" value="" eform="Номер телефона:string:1"/>
    <label for="subject">Номер телефона</label>
</p>
            
<p>
    <textarea name="comments" id="message" class="grid_6" cols="50" rows="10" eform="Текст сообщения:string:1"></textarea>
</p>
<p>Введите код с картинки: <br />
    <input type="text" class="ver" name="vericode" /><img class="feed" src="[+verimageurl+]" alt="Введите код" />
</p>            
<p>
    <input type="submit" name="submit" class="subeform grid_2" value="Отправить сообщение"/>
 </p>

</form>


 

