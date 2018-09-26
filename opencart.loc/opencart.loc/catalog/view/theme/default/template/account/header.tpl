<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link rel="stylesheet" href="catalog/view/javascript/jquery/magnific/magnific-popup.css">
<link href="catalog/view/theme/gift/stylesheet/stylesheet.css" rel="stylesheet">
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<script src="catalog/view/theme/gift/libs/equalheights/equalheights.js"></script>
<script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>
<script src="catalog/view/theme/gift/js/theme.js"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">

<header>
  <div class="container">
    <div class="row">
    	<div class="col-md-4 col-sm-4 hidden-xs">   	
        <?php if ($informations) { ?>
					<ul class="delivery">
						<?php foreach ($informations as $information) { ?>
         			<li><a class="first after" href="<?php echo $information['href']; ?>"><i class="fa fa-truck" aria-hidden="true"></i><?php echo $information['title']; ?></a></li>         				
          	<?php } ?>	
					</ul>
        <?php } ?>	
     	<div class="contact">
     		<i class="fa fa-phone"></i>
     		<span><?php echo $telephone; ?></span>
     	</div>
    	</div>
 			
 			<!-- LOGO -->
			<div class="col-md-4 col-sm-4">
				<div id="logo" class="logo hidden-sm hidden-xs">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
			</div>

			<!-- DROPDOWN MENU -->
			<div class="col-md-4 col-sm-4">
				<ul class="dropdown-wrapper">
					<li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span><?php echo $text_account; ?></span> <span class="caret"></span></a>
	          <ul class="dropdown-menu dropdown-menu-right">
	            <?php if ($logged) { ?>
	            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
	            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
	            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
	            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
	            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
	            <?php } else { ?>
	            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
	            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
	            <?php } ?>
	          </ul>
	        </li>      
				</ul>	
				<div class="cart-wrapper">
					<?php echo $cart; ?>
				</div>
			</div>	
		</div>
  </div>
</header>




 