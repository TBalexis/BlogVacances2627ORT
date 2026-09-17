<?php

require_once 'User.php';

class UserDAO {

	private PDO $con;

	public function __construct() {
		try {
			$this->con = new PDO('mysql:dbname=BlogVacances2627;host=127.0.0.1', 'bthouverez', '321654');
		} catch(Exception $e) {
			die('ERROR CONNEXION DB : '. $e->getMessage() );
		}
	}

	public function getById(int $i) : User {
		// requête SQL
		$sql = 'SELECT * FROM users WHERE id = ?';
		$stmt = $this->con->prepare($sql);
		$stmt->execute([$i]);

		// parcourir le résultat de la requête (un vieu tableau PHP tout pourri)
		$tab = $stmt->fetch();
		// créer un bel objet BO User
		if($tab) {
			$user = new User($tab['id'], $tab['username'], $tab['password'], $tab['lastConnection']);
		} else {
			$user = new User();
		}
		
		// renvoyer le User
		return $user;

	}
}