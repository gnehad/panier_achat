/* Nom : Nehad
   Prénom : Abdelghani
   Numéro du dossier : 6185938
Groupe : 00802



  Script SQL pour créer la base de données du projet

  Création de la base de données Pepiniere
*/

CREATE DATABASE IF NOT EXISTS Pepiniere 
CHARACTER SET "utf8";

/*Sélection de la base de données pepiniere*/
USE Pepiniere;

/*Création de la table Article*/

DROP TABLE IF EXISTS Article;

CREATE TABLE Article(
 identifiant INTEGER NOT NULL AUTO_INCREMENT,
 imageArticle VARCHAR(255) NOT NULL,
 nom VARCHAR(50) NOT NULL,
 categorie VARCHAR(50) NOT NULL, 
 description TEXT NOT NULL,
 prix DECIMAL NOT NULL,
 quantiteDisponible INTEGER NOT NULL,
 CONSTRAINT Pk_Produit PRIMARY KEY(identifiant),
 CONSTRAINT CHK_quantiteDisponible CHECK(quantiteDisponible >= 0)
 );
 
 /*Création de la table Panier*/
 DROP TABLE IF EXISTS Panier;

CREATE TABLE Panier(
 identifiant VARCHAR(255) NOT NULL,
 idArticle INTEGER NOT NULL,
 quantiteArticle INTEGER NOT NULL,
 CONSTRAINT Pk_Panier PRIMARY KEY(identifiant, idArticle),
 CONSTRAINT FK_Panier_Article FOREIGN KEY(idArticle) REFERENCES Article(identifiant)
 );
 
 
 /*Insertion de données*/

INSERT INTO Article (imageArticle, nom, categorie, description, prix, quantiteDisponible)
VALUES
        (
			"noisetier_long_bec.jpg", "Noisetier à long bec" , "Arbres à noix", 
			"Le noisetier à long bec est un arbuste à noisettes extrêmement rustique, originaire du Canada. 
			Il est également tolérant à l’ombre et très résistant aux maladies.",
			18, 22
        ),
        (	
			"chataignier_amerique.jpg", "Chataigner d'Amérique", "Arbres à noix", 
			"Le châtaignier d’Amérique est un arbre à noix très réputé pour ses noix sucrées et faciles 
			 à récolter, et qui sont une excellente source de nourriture fiable.", 
			20, 44
        ),
        (
            "noyer_noir.jpg", "Noyer noir", "Arbres à noix", 
            "Le noyer noir (Juglans nigra) est un noyer à croissance rapide dont la noix est appréciée
            pour sa saveur particulière et ses propriétés médicinales.",
            17, 66
        ),	
        (
			"prunier_noir.jpg", "Prunier noir", "Arbres fruitiers", 
			"Le prunier noir est un prunier sauvage indigène qui est le meilleur pollinisateur pour tous 
			les pruniers de type américain hybride. Il produit aussi un fruit savoureux et très sucré",
			40, 33
		),
		(
			"prunier_alderman.jpg", "Prunier Alderman", "Arbres fruitiers", 
			"Le prunier Alderman est un prunier japonais particulièrement  ornemental et productif.
			Chaque année, il fournit de belles grosses prunes sucrées et délicieuses.",
			35, 25
		),
		(
			"poirier_siberie.jpg", "Poirier de Sibérie", "Arbres fruitiers", 
			"Le poirier de Sibérie est un excellent pollinisateur, en particulier pour 
			les poiriers de type ussuriensis, comme le poirier Ure, le Krazulya et le Vekovaya.", 
			25, 37
		),
		(
			"amelanchier_sauvage.jpg", "Amélanchier sauvage", "Arbustes fruitiers", 
			"L’amélanchier est un petit arbre originaire du nord des États-Unis et du Canada. Il produit 
			des fruits qui ont des similarités avec les bleuets, à la fois en apparence et en goût.", 
			25, 67
			),
		(
			"aronie_noire.jpg", "Aronie noire", "Arbustes fruitiers", 
			"L’aronie est un arbuste très rustique, indigène de l’est du Canada et reconnu pour ses bienfaits 
			pour la santé. Le fruit au goût unique est à la fois astringent et sucré. ",
			20, 56
		),
        (
			"framboisier_pathfinder.jpg", "Framboisier Pathfinder", "Arbustes fruitiers",
             "Le Pathfinder est le framboisier le plus productif et le plus résistant au froid. 
             Il produira rapidement de petits plants qui porteront des fruits d'un execllent goût",
             10, 5
        ),
		(
			"camerisier.jpg", "Camerisier", "Arbustes fruitiers", 
			" Le camérisier est un petit arbuste qui produit le fruit le plus hâtif de la saison. La camerise 
			est un petit fruit pourpre ou bleu très foncé, riche en vitamine C et  en antioxydants", 
			22, 45
		),
		(
			"pommier-collet.jpg", "Pommier Collet", "Arbres fruitiers",
             "Le pommier Collet est un arbre fruitier précoce et résistant aux maladies. Sa saveur 
			 sucrée et acidulé en fait une excellente pomme autant fraîche que cuite.",
             35, 50
        ),
		(
			"poirier-krazulya.jpg", "Poirier Krazulya", "Arbres fruitiers",
             "Krazulya est un cultivar d’origine russe particulièrement rustique, en plus d’être aussi 
			 un très bel arbre. Parmi les premières à mûrir, sa poire est très goûteuse et savoureuse.",
             30, 40
        )
		;
