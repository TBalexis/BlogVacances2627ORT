<?php

class User {

	// attributs
	private int $id;
	private string $username;
	private string $password;
	//private \DateTime $lastConnection;
	private string $lastConnection;

	// constructeur
	public function __construct(int $i = 0, string $u = 'unknown', string $p = 'unknown', string $lc = '1970-01-01') {
		$this->id = $i;
		$this->username = $u;
		$this->password = $p;
		//$this->lastConnection = \DateTime::createFromFormat('Y-m-d h:i:s', $lc);
		$this->lastConnection = $lc;
	}

	// getters/setters
	public function getId(): int { return $this->id; }
	public function setId(int $i) : void { $this->id = $i; }
	public function getUsername(): string { return $this->username; }
	public function setUsername(string $u) : void { $this->username = $u; }
	public function getPassword(): string { return $this->password; }
	public function setPassword(string $p) : void { $this->password = $p; }
	public function getlastConnection(): string { return $this->lastConnection; }
	public function setlastConnection(string $lc) : void { $this->lastConnection = $lc; }

	// public function __get($attr)
	// public function __set($attr, $value)

	public function __toString() : string {
		return 'User '.$this->username. '('.$this->id.') last connected at '.$this->lastConnection;
	}
}

