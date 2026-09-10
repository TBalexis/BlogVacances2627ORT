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
Maecenas sed mauris vel augue euismod imperdiet tincidunt a ante. Nam semper eros felis, nec ultricies nunc tempor nec. Integer sollicitudin fermentum hendrerit. Sed non neque at turpis tempor vulputate. Duis mollis, nibh rhoncus lacinia elementum, ligula augue elementum mi, non laoreet erat odio a erat. Nunc mollis turpis quis urna auctor lobortis. Cras sollicitudin lacinia felis, at ultricies mi molestie vel. Ut suscipit imperdiet nisl ut hendrerit. In egestas scelerisque ornare. Ut tempor neque a ex euismod, sit amet viverra enim dapibus. Etiam vel aliquam velit.
Maecenas tempor commodo elit at mollis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec pharetra elit et magna vehicula venenatis. Suspendisse placerat condimentum imperdiet. Nullam lobortis vel orci in rhoncus. Praesent volutpat, metus ut congue iaculis, nunc elit semper ante, ut bibendum massa turpis at nibh. Donec augue mauris, ullamcorper at pretium nec, finibus sed lorem. Aenean non erat a ante malesuada vestibulum id eu ipsum. Donec luctus tellus vel imperdiet volutpat. Maecenas ullamcorper neque at velit commodo, sit amet molestie ex congue. Suspendisse commodo semper odio, a viverra nibh sagittis eu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin turpis elit, commodo sit amet arcu ut, suscipit ornare leo. Praesent magna ligula, malesuada non lacus non, mattis ornare massa.
Aliquam nec maximus enim. Praesent dictum at erat et cursus. Aliquam suscipit lacus vel urna sollicitudin tempus. Pellentesque euismod tortor at nulla sollicitudin vehicula. Aenean vitae blandit sapien. Nam vel mollis ante. Duis lacinia ipsum sit amet interdum elementum. Morbi sit amet molestie sem. Nulla congue orci orci, nec consequat leo ultricies vel. Donec dictum, turpis non ultricies aliquet, massa augue fringilla elit, eget fringilla ipsum odio in nunc. Cras sollicitudin tristique massa in ornare.
Nullam eros tellus, elementum at nulla ac, varius scelerisque justo. Vestibulum facilisis lacinia interdum. Donec bibendum metus ac mi interdum commodo. Vivamus fringilla sodales mi id fringilla. Aenean id posuere ipsum. Fusce porttitor eleifend feugiat. Nam ut leo sed ex dignissim tincidunt. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed a gravida libero, at accumsan magna. Praesent porta tellus et magna condimentum ultricies ac ac urna. Donec eleifend nulla turpis, consequat commodo nisi placerat sit amet. Mauris interdum ut nibh eu aliquet. Mauris ac leo eros. Suspendisse eget urna quis diam iaculis tempor ut ut sem. Maecenas sit amet mi malesuada, convallis turpis vitae, imperdiet quam. Sed egestas in massa a feugiat. ',
NULL, NOW(), 1),
('Java c\'est grave NUL', '
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elementum, purus sed faucibus dictum, elit risus iaculis orci, at volutpat lectus sem ut dui. Sed a lorem condimentum velit efficitur porta in eu felis. In pharetra risus vel sem finibus mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla efficitur sem ex, vitae mattis orci gravida posuere. Aenean a sollicitudin diam, eu convallis arcu. In dignissim, purus scelerisque congue accumsan, sem magna laoreet ex, ut pellentesque elit augue ut leo. Phasellus et leo id est commodo ornare. Vestibulum quis hendrerit orci. Proin magna felis, malesuada eget dui non, rutrum tempus lorem. Cras dapibus, lorem vel interdum tristique, velit erat ornare magna, sit amet varius turpis ipsum nec massa. Cras sit amet vestibulum augue. Vivamus imperdiet lorem ipsum, non pellentesque ante dignissim sed.
Nulla a elit mollis, vestibulum augue at, tempus nulla. Curabitur quis risus elit. Sed id nibh orci. Aenean facilisis urna ut interdum tempor. Nulla venenatis turpis non tortor pulvinar, eu faucibus odio aliquet. Nunc leo ante, semper eu hendrerit porta, porttitor a tortor. Etiam ac ligula tellus.
Pellentesque non sem faucibus tortor eleifend cursus. Quisque a sodales urna, vel aliquet mauris. Donec sed velit ex. Aenean sit amet eleifend tellus. Nulla facilisi. Morbi et aliquam erat, sed tincidunt neque. Praesent tincidunt pellentesque augue quis hendrerit. Curabitur eget dignissim elit. Phasellus a arcu bibendum, iaculis arcu vel, aliquet ipsum. Maecenas quis nulla leo. Quisque justo ligula, aliquam et ullamcorper sed, ultricies vel turpis. Etiam sit amet justo ac nibh gravida semper et pulvinar elit.
Nunc at mauris vel neque condimentum hendrerit ac sed enim. Nunc vel mauris sit amet turpis volutpat fermentum. Phasellus non tortor tristique augue blandit ornare ac sed metus. Phasellus consequat dolor ac imperdiet malesuada. Suspendisse potenti. Sed purus leo, efficitur et varius at, pulvinar at lorem. Ut massa nisi, pellentesque quis viverra eu, malesuada vel sem. Pellentesque at tristique neque.
Nunc nunc sapien, suscipit ac mi in, volutpat faucibus nibh. Vestibulum eget lacus erat. Nunc sit amet orci non augue feugiat aliquam in sed elit. Ut mi turpis, vulputate sed orci eget, mollis efficitur ante. Donec vehicula elit id rutrum ullamcorper. Pellentesque pharetra volutpat massa. Quisque varius congue mauris sit amet blandit. Donec aliquam hendrerit dolor a ultricies.
Fusce pretium aliquam nisl, sed tempus justo cursus et. Nulla nec dictum neque. In sed sapien sed felis pharetra tincidunt. Mauris porta mollis faucibus. Integer vel diam sit amet libero mollis rutrum auctor vel ligula. Curabitur scelerisque nibh sollicitudin mi elementum laoreet. Aenean vel ligula nec metus tempus semper sagittis in ligula.
', 'https://destefano.wordpress.com/wp-content/uploads/2013/01/javalogocross.png',
NOW(), 2),
('PHP c la vie', 'Rien de plus à dire', 'https://lp.jetbrains.com/static/upl/5894/2026/04/13/124955-0.65734756.gif', NOW(), 1);