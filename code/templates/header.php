<?php
  $brandName = 'BRAND';
?>

<!doctype html>
<html>
  <head>
    <title><?php echo $brandName ?> Intranet - <?php echo $pageName ?></title>
    <style>
      body {
        background-color: #<?php echo $backgroundColor ?>;
        color: #<?php echo $color ?>;
      }
    </style>
  </head>
  <body>
    <header>
      <?php include('menu.php') ?>
    </header>
    <div>
