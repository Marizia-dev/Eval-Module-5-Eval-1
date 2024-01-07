CREATE TABLE propriétaire (
    id INT PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    prénom VARCHAR(255),
    adresse VARCHAR(255),
    téléphone VARCHAR(20)
);


CREATE TABLE bien (
    id INT PRIMARY KEY AUTOINCREMENT,
    superficie FLOAT NOT NULL,
    adresse VARCHAR(255)NOT NULL,
    prix_location FLOAT NOT NULL,
    id_propriétaire INT NOT NULL,
    FOREIGN KEY (id_propriétaire) REFERENCES propriétaire(id)
);


CREATE TABLE contrat (
    id INT PRIMARY KEY AUTOINCREMENT,
    durée INT NOT NULL,
    pourcentage FLOAT NOT NULL,
    id_bien INT NOT NULL,
    id_propriétaire INT NOT NULL,
    FOREIGN KEY (id_bien)REFERENCES bien(id),
    FOREIGN KEY (id_propriétaire) REFERENCES propriétaire(id)
);


CREATE TABLE locataire (
    id INT PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    prénom VARCHAR (255) NOT NULL,
    adresse VARCHAR (255)NOT NULL,
    téléphone VARCHAR(20)
   
);

CREATE TABLE bail (
    id INT PRIMARY KEY AUTOINCREMENT,
    numéro INT NOT NULL,
    date_début DATE NOT NULL,
    date_fin DATE NOT NULL,
    id_bien INT NOT NULL,
    id_locataire INT NOT NULL,
    FOREIGN KEY (id_bien)REFERENCES bien(id),
    FOREIGN KEY (id_locataire) REFERENCES locataire(id)
);




