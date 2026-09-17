<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style>
		body { background: #FF7700;
		}
	</style>
</head>
<body>


<?php

require_once 'model/UserDAO.php';
require_once 'model/ArticleDAO.php';
$daoUser = new UserDAO;
$u = $daoUser->getById(4);
$daoArticle = new ArticleDAO;
$a = $daoArticle->getById(2);


/*
require_once 'model/User.php';

$u = new User(7, 'bob', 'bib', '2026-09-10');
echo $u;

echo '<br><br>';

$u = new User();
echo $u;
*/

?>

<h1>Bonjour <?= $u->getUsername() ?></h1>

<section class="article" style="width: 700px; margin: auto; border: 1px solid black; border-radius: 7px; padding: 25px; background: white">
	<h2><?= $a->getTitle() ?></h2>
	<h3>Posté le <?= $a->getPostedAt() ?> par <?= "?????????????????" ?></h3>
	<p><img width="200" style="float: left; margin: 0 15px 5px 0" src="<?= $a->getImage() ?>" alt="image"><?= $a->getBody() ?></p>
</section>

</body>
</html>