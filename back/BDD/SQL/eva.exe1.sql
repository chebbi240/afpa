Drop database if exists 'evaluation.ex1'
create database'evaluation.ex1';
use'evaluation.ex1';

/*script de création de la table client */
CREATE TABLE client (
    cli_num INT primery key ,
    cli_nom VARCHAR(50) ,
    cli_adresse VARCHAR(50) ,
    cli_tel INT(30) 

   );

/*script de création de la table commande*/
CREATE TABLE commande (
    com_num INT(11) primery key ,
    cli_num INT(11) ,
    com_date DATETIME(6) ,
    com_obs VARCHAR(50) 

);

/*script de création de la table est compose*/
CREATE TABLE est_compose (
    com_num INT(11) primery key  ,
    pro_num INT(11) primery key ,
    est_qte INT(11) ,
    foreign key (com_num) references commande (com_num),
    foreign key ( pro_num) references produit (pro_num )
);

/*script de creation de la table produit */
CREATE TABLE produit (
    pro_num INT(11) primery key ,
    pro_libelle VARCHAR(50) ,
    pro_description VARCHAR(50) 

);

/*script de création de l'index associé à nla table client*/
create index  index_nom on client (cli_nom)
show index from client



