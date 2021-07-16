 CREATE DATABASE IF NOT EXISTS' hotel' 
 USE 'hotel';
 
--   CREATE TABLE hotel IF NOT EXISTS(
--      ' cap-hotel' int(11) NOT NULL,
--       'cat-hotel' int(11) NOT NULL,
--      ' nom 'varchar (11) NOT NULL,
--       'adresse_hotel' varchar(50) NOT NULL,
--       'num_station' int(11) NOT NULL,
--       'num_hotel' int(11) NOT NULL,  
--  PRIMARY KEY ('num_hotel')
);
CREATE TABLE 'chambre' IF NOT EXISTS (
     'cap_chm' INT(11) NOT NULL,
     'degre_confort' VARCHAR(50) NOT NULL,
     'exposition' VARCHAR(50) NOT NULL,
     'type_chambre' VARCHAR (50)NOT NULL,
    'num_chambre' INT,
    'num_hotel' INT NOT NULL,
 PRIMARY KEY ('num_chambre'),
 );
CREATE TABLE 'station' IF NOT EXISTS (
    ' num_station' INT(11) NOT NULL,
     'nom_station' varchar(50),
 PRIMARY KEY ('num_station')
);
CREATE TABLE 'client' IF NOT EXISTS (
     'cli_adresse' VARCHAR(50),
     'cli_nom' VARCHAR(50) ,
     'cli_premon' VARCHAR (50) NOT NULL,
     'cli_num' INT NOT NULL(11) ,
 PRIMARY KEY ('cli_num')
);
CREATE TABLE Reservation(
     'date_debut' DATE ,
     'date_fin' DATE,
     'date_reseravation' DATE,
     'montant_ar' int(11),
     'prix' int(11),
 PRIMARY KEY ('num_chambre'),
 PRIMARY KEY ('num_client')
);
CREATE TABLE IF NOT EXISTS `client` (
  `cli_id` int(11) NOT NULL,
  `cli_nom` varchar(50) DEFAULT NULL,
  `cli_prenom` varchar(50) DEFAULT NULL,
  `cli_adresse` varchar(50) DEFAULT NULL,
  `cli_ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
