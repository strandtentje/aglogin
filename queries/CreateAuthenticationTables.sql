CREATE TABLE `Login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(192) CHARACTER SET utf8 DEFAULT NULL,
  `salt` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cookie` varchar(192) CHARACTER SET utf8 DEFAULT NULL,
  `login` int(11) DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loggedinsession_idx` (`login`),
  CONSTRAINT `loggedinsession` FOREIGN KEY (`login`) REFERENCES `Session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);