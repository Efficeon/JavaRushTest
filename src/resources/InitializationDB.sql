CREATE SCHEMA IF NOT EXISTS test  DEFAULT CHARACTER SET utf8;
CREATE DATABASE if NOT EXISTS test DEFAULT CHARACTER SET utf8;
CREATE TABLE IF NOT EXISTS `test`.`USERS` (
  `id` INT(8)  AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL ,
  `age` INT NOT NULL,
  `isAdmin` BIT  ,
  `createdDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC ),
  PRIMARY KEY (`id`));


INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User1','12',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User2','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User3','14',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User4','44',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User5','65',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User6','44',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User7','2',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User8','77',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User9','38',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User10','58',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User11','23',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User12','26',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User13','45',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User14','17',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User15','63',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User16','44',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User17','87',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User18','31',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User19','32',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User20','41',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User21','46',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User22','77',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User23','11',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User24','25',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User25','26',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User26','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User27','28',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User28','25',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User29','88',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User30','14',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User31','73',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User32','44',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User33','55',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User34','64',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User35','25',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User36','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User37','53',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User38','47',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User39','74',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User40','35',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User41','2',0 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('User42','21',1 );

