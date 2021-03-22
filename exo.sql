
DROP DATABASE IF EXISTS hotel;

CREATE  DATABASE Hotel CHARACTER SET utf8 COLLATE utf8_general_ci;


USE Hotel;

CREATE TABLE Hotel.client (
    adresse_client VARCHAR(255)NOT NULL,
    Nom_client VARCHAR(255)NOT NULL,
    prenom_client VARCHAR(255)NOT NULL,
    id_client INT(11) AUTO_INCREMENT NOT NULL, 
    PRIMARY KEY(id_client)
    
)ENGINE =InnoDB;

CREATE TABLE Hotel.Station(
    id_station INT(11) AUTO_INCREMENT NOT NULL,
    nom_station VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_station)
    
)ENGINE =InnoDB;

CREATE TABLE Hotel.hotel_cal(
    capacite_hotel VARCHAR(255)NOT NULL,
    categorie_hotel VARCHAR(255) NOT NULL,
    nom_hotel VARCHAR(255) NOT NULL,
    adresse_hotel VARCHAR(255)NOT NULL,
    id_hotel INT(11)NOT NULL AUTO_INCREMENT,
    id_station INT(11)NOT NULL,
    PRIMARY KEY(id_hotel),
    FOREIGN KEY (id_station) REFERENCES station(id_station)
    
)ENGINE =InnoDB;

CREATE TABLE Hotel.chambre(
    capacite_chambre INT(11)NOT NULL,
    degre_confort INT(11)NOT NULL,
    exposition VARCHAR(6)NOT NULL,
    type_chambre VARCHAR(255)NOT NULL,
    id_chambre INT(11) NOT NULL AUTO_INCREMENT,
    id_hotel INT(11)NOT NULL,
    PRIMARY KEY(id_chambre),
    FOREIGN KEY(id_hotel) REFERENCES hotel_cal(id_hotel)

)ENGINE = InnoDB;

CREATE TABLE Hotel.reservation(
    id_chambre INT(11) NOT NULL,
    id_client INT(11)NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    date_reservation DATE NOT NULL,
    montant_arrhes INT(11)NOT NULL,
    prix_total INT(11)NOT NULL,
    FOREIGN KEY(id_chambre) REFERENCES chambre(id_chambre),
    FOREIGN KEY(id_client) REFERENCES client(id_client)
)ENGINE= InnoDB;