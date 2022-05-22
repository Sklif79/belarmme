<?
define('MODX_API_MODE', true);
include_once $_SERVER["DOCUMENT_ROOT"].'/manager/includes/config.inc.php';
include_once $_SERVER["DOCUMENT_ROOT"].'/manager/includes/document.parser.class.inc.php';
$modx = new DocumentParser;
$modx->db->connect();
$modx->getSettings();
startCMSSession();

$arrayEmail = $modx->getTemplateVar('email_for_feedback','*',1);//Получаем email
$emailCont = $arrayEmail['value'];
define ("MAIL", $emailCont);


// Код отправки сообщения на email c формы обратной связи
if ($_POST['type_form']==1){ //проверка на наименование формы
	if ($_POST['email_back']==""){
		if (!isset($_SESSION['counter_1'])){ //проверка на повторную отправку
			$_SESSION['counter_1']=0;
		}else{
			$count_1=$_SESSION['counter_1'];
		}
		if ($count_1==$_POST){
			mail_resubmission_2(); //вызов сообщения о попытке повторной отправки
		}else{
				//сообщение приходящее на email
				$subject = "Обратная связь с сайта belarmmet.by";
				$headers = "MIME-Version: 1.0\r\n";
				$headers .= "Content-type: text/html; charset=utf-8\r\n";
				$headers .= "From: belarmmet <robot@belarmmet.by>\r\n";
				$mail_client=MAIL;
				$message = "<html>
				<head>
				<title>Сообщение с текстом из формы обратной связи с сайта <b>&laquo;belarmmet.by&raquo;</b></title>
				</head>
				<body>
				<table>
				<tr valign='top'><td>Тема сообщения:</td><td>Обратная связь с сайта <b>&laquo;belarmmet.by&raquo;</b></td></tr>
				<tr valign='top'><td>Имя пользователя, оставившего запрос:</td><td>".$_POST['name']."</td></tr>
				<tr valign='top'><td>Телефон:</td><td>".$_POST['phone']."</td></tr>
				<tr valign='top'><td>Email:</td><td>".$_POST['email']."</td></tr>
				<tr valign='top'><td>Текст сообщения:</td><td>".$_POST['message']."</td></tr>
				</table>";

				if(mail($mail_client, $subject, $message, $headers)){
					//сообщение об удачной отправке;
					yes_val();
					$_SESSION['counter_1']=$_POST;
				}else{
					error_val();	
				}
		}
	}else{
	//Сообщение о использовании спам-бота
	spam_val();
	}
}



// Код отправки сообщения на email Заказать Звонок
if ($_POST['type_form']==2){ //проверка на наименование формы
	if ($_POST['email_back']==""){
		if (!isset($_SESSION['counter_2'])){ //проверка на повторную отправку
			$_SESSION['counter_2']=0;
		}else{
			$count_2=$_SESSION['counter_2'];
		}
		if ($count_2==$_POST){
			resubmission_val(); //вызов сообщения о попытке повторной отправки
		}else{
			//сообщение приходящее на email
			$subject = "Заказ звонка с сайта belarmmet.by";
			$headers = "MIME-Version: 1.0\r\n";
			$headers .= "Content-type: text/html; charset=utf-8\r\n";
			$headers .= "From: belarmmet <robot@belarmmet.by>\r\n";
			$mail_client=MAIL;
			$message = "<html>
		<head>
		<title>Сообщение из формы Заказать Звонок с сайта <b>&laquo;belarmmet.by&raquo;</b></title>
		</head>
		<body>
		<table>
		<tr valign='top'><td>Тема сообщения:</td><td>Заказать звонок с сайта <b>&laquo;belarmmet.by&raquo;</b></td></tr>
		<tr valign='top'><td>Имя заказчика:</td><td>".$_POST['name']."</td></tr>
		<tr valign='top'><td>Телефон:</td><td>".$_POST['phone']."</td></tr>
		<tr valign='top'><td>Время для телефонного звонка, которое удобно заказчику:</td><td>".$_POST['call_time']."</td></tr>
		</table>";

			if(mail($mail_client, $subject, $message, $headers)){
				//сообщение об удачной отправке;
				yes_val();
				$_SESSION['counter_2']=$_POST;
			}else{
				error_val();	
			}
		}
	}else{
		//Сообщение о использовании спам-бота
		spam_val();
	}
}

// Код отправки сообщения на email c формы Оставить отзыв
if ($_POST['type_form']==3){ //проверка на наименование формы
	if ($_POST['email_back']==""){ //Проверка на отправку спам-ботом
		if (!isset($_SESSION['counter_3'])){ //проверка на повторную отправку
			$_SESSION['counter_3']=0;
		}else{
			$count_3=$_SESSION['counter_3'];
		}
		if ($count_3==$_POST){
			mail_resubmission_2(); //вызов сообщения о попытке повторной отправки
		}else{
				//сообщение приходящее на email
				$subject = "Сообщение с оставленным отзывом с сайта belarmmet.by";
				$headers = "MIME-Version: 1.0\r\n";
				$headers .= "Content-type: text/html; charset=utf-8\r\n";
				$headers .= "From: belarmmet <robot@belarmmet.by>\r\n";
				$mail_client=MAIL;
				$message = "<html>
				<head>
				<title>Сообщение с текстом из формы &laquo;Оставить отзыв&laquo; с сайта <b>&laquo;belarmmet.by&raquo;</b></title>
				</head>
				<body>
				<table>
				<tr valign='top'><td>Тема сообщения:</td><td>Отзыв, оставленный на сайте <b>&laquo;belarmmet.by&raquo;</b></td></tr>
				<tr valign='top'><td>Имя пользователя, оставившего отзыв:</td><td>".$_POST['name']."</td></tr>
				<tr valign='top'><td>Email:</td><td>".$_POST['email']."</td></tr>
				<tr valign='top'><td>Текст отзыва:</td><td>".$_POST['message']."</td></tr>
				</table>";

				if(mail($mail_client, $subject, $message, $headers)){
					//сообщение об удачной отправке;
					yes_val();
					$_SESSION['counter_3']=$_POST;
				}else{
					error_val();	
				}
		}
	}else{
	//Сообщение о использовании спам-бота
	spam_val();
	}
}

// Код отправки сообщения на email c формы Заказать товар или услугу
if ($_POST['type_form']==4){ //проверка на наименование формы
	if ($_POST['email_back']==""){
		if (!isset($_SESSION['counter_4'])){ //проверка на повторную отправку
			$_SESSION['counter_4']=0;
		}else{
			$count_4=$_SESSION['counter_4'];
		}
		if ($count_4==$_POST){
			resubmission_val(); //вызов сообщения о попытке повторной отправки
		}else{
				//сообщение приходящее на email
				$subject = "Текст с заказом товара или услуги с сайта belarmmet.by";
				$headers = "MIME-Version: 1.0\r\n";
				$headers .= "Content-type: text/html; charset=utf-8\r\n";
				$headers .= "From: belarmmet <robot@belarmmet.by>\r\n";
				$mail_client=MAIL;
				$message = "<html>
				<head>
				<title>Сообщение с текстом из формы &laquo;Заказать товар или услугу&laquo; с сайта <b>&laquo;belarmmet.by&raquo;</b></title>
				</head>
				<body>
				<table>
				<tr valign='top'><td>Тема сообщения:</td><td>Заказ товара или услуги с сайта <b>&laquo;belarmmet.by&raquo;</b></td></tr>
				<tr valign='top'><td>Имя заказчика:</td><td>".$_POST['name']."</td></tr>
				<tr valign='top'><td>Телефон:</td><td>".$_POST['phone']."</td></tr>
				<tr valign='top'><td>Время для телефонного звонка, которое удобно заказчику:</td><td>".$_POST['call_time']."</td></tr>
				<tr valign='top'><td>Текст сообщения:</td><td>".$_POST['message']."</td></tr>
				<tr valign='top'><td>Заказываемый товар или услуга:</td><td>".$_POST['name_service']."</td></tr>
				
				</table>";

				if(mail($mail_client, $subject, $message, $headers)){
					//сообщение об удачной отправке;
					yes_val();
					$_SESSION['counter_4']=$_POST;
				}else{
					error_val();	
				}
		}
	}else{
	//Сообщение о использовании спам-бота
	spam_val();
	}
}


function mail_yes(){
	//  функция обработки сообщения об удачной отправке;?>
<p id="yes_mail_c" style="padding: 2px; text-transform: none; font: 16px/19px arial, Georgia;color: green; font-size: 16px; font-weight: bold;">Спасибо, ваше сообщение отправлено, наши менеджеры скоро свяжутся с вами</p>
<script>
	$('#yes_mail_c').fadeOut(5000);
</script>
<?
}

function mail_resubmission(){
	//Сообщение о повторной отправке сообщения?>
<p id="yes_mail_c" style="padding: 2px; text-transform: none; font: 16px/19px arial, Georgia;color: red; font-size: 16px; font-weight: bold;">Ваше сообщение уже отправлено, нет нужды отправлять его повторно</p>
<script>
	$('#yes_mail_c').fadeOut(5000);
</script>
<?
}

function mail_yes_2(){
	//  функция обработки сообщения об удачной отправке;?>
<p id="yes_mail_c" style='color: green;font-size:16px'>Спасибо, ваше сообщение отправлено, наши менеджеры скоро свяжутся с вами</p>
<script>
	$('#yes_mail_c').fadeOut(5000);
</script>
<?
}

function mail_resubmission_2(){
	//Сообщение о повторной отправке сообщения?>
<p id="yes_mail_c" style='color: red;font-size:16px; text-align:center;'>Ваше сообщение уже отправлено, нет нужды отправлять его повторно</p>
<script>
	$('#yes_mail_c').fadeOut(5000);
</script>
<?
}

function mail_not_2(){
	//Сообщение об ошибке при отправке сообщения?>
<p id="yes_mail_c" style='color: red;font-size:16px; text-align:center;'><span>Ошибка</span><br />К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже</p>
<?
}

function mail_spam(){
	//Сообщение об попытке отправки спама?>
<p id="yes_mail_c" class="c-alert-message m-warning m-request-error"><i class="ico fa fa-exclamation-circle"></i><span>Ошибка</span><br />Сообщение отправлено спам-ботом</p>
<?
}

function mail_nocapcha(){
	//Сообщение об попытке отправки спама?>
<p id="yes_mail_c" class="c-alert-message m-warning m-request-error"><i class="ico fa fa-exclamation-circle"></i><span>Ошибка</span><br />Не введен или введен неверно код CAPTCHA</p>
<?
}


/*Сообщения для модальных окон*/
function yes_val(){
	//  функция обработки сообщения об удачной отправке;
	echo "yes";
}

function error_val(){
	//  функция обработки сообщения об ошибке при отправке;
	echo "error";
}

function resubmission_val(){
	//  функция обработки сообщения об ошибке при отправке;
	echo "resubmission";
}

function spam_val(){
	//  функция обработки сообщения об ошибке при отправке;
	echo "spam";
}