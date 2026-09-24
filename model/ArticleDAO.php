<?php

require_once('Article.php');

class ArticleDAO {

	private PDO $con;

	public function __construct() {
		try {
			$this->con = new PDO('mysql:dbname=BlogVacances2627;host=127.0.0.1', 'bthouverez', '321654');
		} catch(Exception $e) {
			die('ERROR CONNEXION DB : '. $e->getMessage() );
		}
	}


	public function getById(int $i): Article {
		$sql = 'SELECT * FROM articles a 
		INNER JOIN users u ON a.idUser = u.id
		WHERE a.id = ?;';
		$stmt = $this->con->prepare($sql);
		$stmt->execute([$i]);

		$data = $stmt->fetch();
		$article = new Article;

		if($data) {
			$article->setId($data['id']);
			$article->setTitle($data['title']);
			$article->setBody($data['body']);
			$article->setImage($data['image']);
			$article->setPostedAt($data['postedAt']);

			$u = new User;

			$u->setId($data['id']);
			$u->setUsername($data['username']);
			$u->setPassword($data['password']);
			$u->setLastConnection($data['lastConnection']);

			$article->setUser($u);
		}

		return $article;
	}
}