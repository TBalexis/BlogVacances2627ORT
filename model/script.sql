DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS users;


CREATE TABLE articles (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(200) NOT NULL,
	body TEXT NOT NULL,
	image VARCHAR(255),
	postedAt DATETIME NOT NULL,
	idUser INT NOT NULL
);

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
	lastConnection DATETIME NOT NULL
);


ALTER TABLE articles ADD CONSTRAINT fk_users_article
FOREIGN KEY (idUser) REFERENCES users(id);


INSERT INTO users (username, password, lastConnection) VALUES
('bthouverez', '321654', NOW()),
('mgoudet', 'javaCnaze33', '2025-09-02'),
('laplante', 'coucou', '1997-02-06');

INSERT INTO articles (title, body, image, postedAt, idUser) VALUES
('Coucou c\'est la rentrée', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia ante ut purus congue, sed pellentesque neque accumsan. Aenean lectus libero, sodales at ante quis, placerat sagittis sapien. Duis ac urna purus. Integer ac purus ligula. Donec a augue dui. Sed tellus eros, convallis ut neque sit amet, suscipit faucibus risus. Duis velit felis, consectetur at risus ac, faucibus tincidunt libero.
Maecenas sed mauris vel augue euismod imperdiet tincidunt a ante.Vestibulum facilisis lacinia interdum. Donec bibendum metus ac mi interdum commodo. Vivamus fringilla sodales mi id fringilla. Aenean id posuere ipsum. Fusce porttitor eleifend feugiat. Nam ut leo sed ex dignissim tincidunt. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed a gravida libero, at accumsan magna. Praesent porta tellus et magna condimentum ultricies ac ac urna. Donec eleifend nulla turpis, consequat commodo nisi placerat sit amet. Mauris interdum ut nibh eu aliquet. Mauris ac leo eros. Suspendisse eget urna quis diam iaculis tempor ut ut sem. Maecenas sit amet mi malesuada, convallis turpis vitae, imperdiet quam. Sed egestas in massa a feugiat. ',
NULL, NOW(), 1),
('Java c\'est grave NUL', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elementum, purus sed faucibus dictum, elit risus iaculis orci, at volutpat lectus sem ut dui. Sed a lorem condimentum velit efficitur porta in eu felis. In pharetra risus vel sem finibus mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla efficitur sem ex, vitae mattis orci gravida posuere. Aenean a sollicitudin diam, eu convallis arcu. In dignissim, purus scelerisque congue accumsan, sem magna laoreet ex, ut pellentesque elit augue ut leo. Phasellus et leo id est commodo ornare. Vestibulum quis hendrerit orci. Proin magna felis, malesuada eget dui non, rutrum tempus lorem. Cras dapibus, lorem vel interdum tristique, velit erat ornare magna, sit amet varius turpis ipsum nec massa. Cras sit amet vestibulum augue. Vivamus imperdiet lorem ipsum, non pellentesque ante dignissim sed.
Nulla a elit mollis, vestibulum augue at, tempus nulla. Nulla nec dictum neque. In sed sapien sed felis pharetra tincidunt. Mauris porta mollis faucibus. Integer vel diam sit amet libero mollis rutrum auctor vel ligula. Curabitur scelerisque nibh sollicitudin mi elementum laoreet. Aenean vel ligula nec metus tempus semper sagittis in ligula.
', 'https://destefano.wordpress.com/wp-content/uploads/2013/01/javalogocross.png',
NOW(), 2),
('PHP c la vie', 'Rien de plus à dire', 'https://lp.jetbrains.com/static/upl/5894/2026/04/13/124955-0.65734756.gif', NOW(), 1);