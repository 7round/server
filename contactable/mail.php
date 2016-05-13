<?php
    $emailAddr = 'info@round7.ru';
    //$emailAddr = 'alys2008@gmail.com';

	//declare our assets
	$name = stripcslashes($_POST['name']);
	//$emailAddr = stripcslashes($_POST['email']);
	$phone = stripcslashes($_POST['phone']);
	//$comment = stripcslashes($_POST['message']);
	$ctime = stripcslashes($_POST['ctime']);
	$subject = stripcslashes($_POST['subject']);

    $page = stripcslashes($_POST['page']);

    $headers = 'From: ' . $emailAddr . '' . "\r\n" .
    'Reply-To: '. $emailAddr . '' . "\r\n" .
	'Content-type: text/html; charset=UTF-8' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

    $contactMessage = "
        Имя отправителя: $name
        Телефон: $phone
        Удобное время: $ctime

        Письмо отправлено со страницы: $page
        IP отправителя: $_SERVER[REMOTE_ADDR]
    ";

	//send the email
	mail($emailAddr, $subject, nl2br($contactMessage), $headers);
	echo('success'); //return success callback

?>