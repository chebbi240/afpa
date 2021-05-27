Drop database if exists 'hotel'
create database'hotel';
use'hotel';

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
     -- Lot 1
-- 1/Afficher la liste des hotels
Select hot_nom, hot_ville
From hotel
-- 2/ afficher la ville de résidence de Mr White
select cli_nom ,cli_prenom,cli_adresse 
From client
Where cli_nom='White';
-- 3/Afficher la liste des station dont l'altitude <1000 
select sta_nom,sta_altitude
from station
where sta_altitude <1000;
-- 4/Afficher la liste des chambres ayant une capacité>1
Select cha_capcite, cha_numero
from chambres
where cha_capcite>1 ;
-- 5/afficher les clients n'habitant pas à Londre
Select cli_nom,cli_ville
From client
where cli_ville!='Londre';
-- 6/Afficher la liste des hotels située sur la ville de bretou et posséde une catégorie >3
select hot_nom , hot_ville, hot_catégorie
From hotel
where hot_ville = 'Bretou'
 hot_catégorie>3;

   -- Lot 2
-- 7/Afficher la liste des hotels avec leur station 
select sta_nom , hot_nom,hot_categorie,hot_ville
from hotel ,station
Where sta_id=hot_sta_id
-- 8/Afficher la liste des chambres et leur hotel
-- solution 1:
select hot_nom , hot_categorie, hot_ville, cha_numero 
from hotel
join chambre on hot_id=cha_hot_id
-- solution 2
select hot_nom , hot_categorie, hot_ville, cha_numero 
from hotel,chambre
where hot_id=cha_hot_id;
-- 9/Afficher la liste des chambres de plus d'une place dans des hôtels situés sur la ville de Bretou
select hot_nom, hot_categorie,hot_ville,cha_numero,cha_capcite
from hotel
join chambre on hot_id=cha_hot_id
where hot_ville = 'Bretou'
AND cha_capacite>1;
-- 10/afficher la liste des réservations avec le nom des clients
select cl.cli_nom,r.res_id,r.res_cli_id ,r.res_date ,r.res_cha_id,h.hot_nom
from reservation r
join client cl on cl.cha_id =r.res_cli_id
join chambre ch on ch.cha_id= r.res_cha_id
join hotel h on h.hot_id=cha.cha_hot_id

-- 11 - Afficher la liste des chambres avec le nom de l’hôtel et le nom de la station 
select s.sta_nom ,h.hot_nom,ch.cha_numero,ch.cha_capcite
from chambre ch
join hotel h on h.hot_id=ch.cha_hot_id
join station s on s.sta_id=h.hot_sta_id
-- 12/ Afficher les réservations avec le nom du client et le nom de l’hôtel
select r.res_date_debut, datediff(dd, r.res_date_debut, r.res_date_fin) as 'durée  (jours)', 
h.hot_nom, 
cl.cli_nom 
from reservation r 
join chambre ch on ch.cha_id = r.res_cha_id 
join hotel h on h.hot_id = ch.cha_hot_id  
join client cl on cl.cli_id = r.res_cli_id  
-- Lot 3
-- 13 / Compter le nombre d’hôtel par station 
select count(h.hot_id) as 'nombre d''hôtels', s.sta_nom as 'Station', s.sta_id 
from hotel h 
join station s on s.sta_id = h.hot_sta_id 
group by s.sta_nom, s.sta_id 
-- 14 /Compter le nombre de chambre par station
select count(cha_id) As'nonmbre de chambre',
s.sta_nom As 'station'
from station s
join hotel h on h.hot_sta_id=s.sta_id
join chambre ch on ch.cha_hot_id = h.hot_id
group by s.sta_nom

-- 15 /Compter le nombre de chambre par station ayant une capacité > 1
select count(c.cha_numero) as 'nombre de chambre par station > 1', sta_nom as 'Station' 
from chambre c 
join hotel h on h.hot_id = c.cha_hot_id 
join station s on s.sta_id = h.hot_sta_id 
where c.cha_capacite > 
group by s.sta_nom 

-- 16 / Afficher la liste des hôtels pour lesquels Mr Squire a effectué une réservation

select hot_nom as 'Nom de l''Hôtel' 
from hotel h 
join chambre ch on ch.cha_hot_id = h.hot_id  
join reservation r on r.res_cha_id = ch.cha_id  
join client cl on cl.cli_id = r.res_cli_id  
where cl.cli_nom = 'Squire' 
group by h.hot_nom 

-- 17 / Afficher la durée moyenne des réservations par station
select s.sta_nom as 'Station', avg(datediff(dd, r.res_date_debut, r.res_date_fin)) as 'Durée moyenne (jours)' 
from reservation r 
join chambre cha on cha.cha_id = r.res_cha_id 
join hotel h on h.hot_id = cha.cha_hot_id 
join station s on s.sta_id = h.hot_sta_id 
group by s.sta_nom 

