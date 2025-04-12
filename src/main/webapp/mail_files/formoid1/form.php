<?php

define('EMAIL_FOR_REPORTS', 'Rohan.pagare695@gmail.com');
define('RECAPTCHA_PRIVATE_KEY', '@privatekey@');
define('FINISH_URI', 'http://');
define('FINISH_ACTION', 'message');
define('FINISH_MESSAGE', 'Thanks for filling out my form!');
define('UPLOAD_ALLOWED_FILE_TYPES', 'doc, docx, xls, csv, txt, rtf, html, zip, jpg, jpeg, png, gif');

define('_DIR_', str_replace('\\', '/', dirname(__FILE__)) . '/');
require_once _DIR_ . '/handler.php';

?>

<?php if (frmd_message()): ?>
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-solid-light-green.css" type="text/css" />
<span class="alert alert-success"><?php echo FINISH_MESSAGE; ?></span>
<?php else: ?>
<!-- Start Formoid form-->
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-solid-light-green.css" type="text/css" />
<script type="text/javascript" src="<?php echo dirname($form_path); ?>/jquery.min.js"></script>
<form enctype="multipart/form-data" class="formoid-solid-light-green" style="background-color:#1A2223;font-size:17px;font-family:'Palatino Linotype','Book Antiqua',Palatino,serif;color:#34495E;max-width:500px;min-width:150px" method="post"><div class="title"><h2>Mail to</h2></div>
	<div class="element-input<?php frmd_add_class("input"); ?>"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" name="input" required="required" placeholder="TO"/><span class="icon-place"></span></div></div>
	<div class="element-email<?php frmd_add_class("email"); ?>"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="email" name="email" value="" required="required" placeholder="CC"/><span class="icon-place"></span></div></div>
	<div class="element-textarea<?php frmd_add_class("textarea"); ?>"><label class="title"></label><div class="item-cont"><textarea class="medium" name="textarea" cols="20" rows="5" placeholder="Text Area"></textarea><span class="icon-place"></span></div></div>
	<div class="element-separator"><hr><h3 class="section-break-title">Upload your Resume</h3></div>
	<div class="element-file<?php frmd_add_class("file"); ?>"><label class="title"><span class="required">*</span></label><div class="item-cont"><label class="large" ><div class="button">CHOOSE FILE</div><input type="file" class="file_input" name="file" required="required"/><div class="file_text">No file selected</div><span class="icon-place"></span></label></div></div>
<div class="submit"><input type="submit" value="Submit"/></div></form><script type="text/javascript" src="<?php echo dirname($form_path); ?>/formoid-solid-light-green.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>