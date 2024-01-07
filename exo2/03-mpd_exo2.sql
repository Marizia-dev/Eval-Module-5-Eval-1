CREATE TABLE médecin (
    id INT PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(50) NOT NULL
);


CREATE TABLE consultation (
    id INT PRIMARY KEY AUTOINCREMENT,
    date DATE NOT NULL,
    prix DECIMAL(6,2) NOT NULL,
    id_médecin INT NOT NULL,
    FOREIGN KEY (id_médecin) REFERENCES médecin(id)
);


CREATE TABLE malade (
    id INT PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(50) NOT NULL,
    id_consultation INT NOT NULL,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id)
);


CREATE TABLE symptôme (
    id INT PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255)NOT NULL,
    id_consultation INT NOT NULL,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id)
);



CREATE TABLE maladie (
    id INT PRIMARY KEY AUTOINCREMENT,
        nom VARCHAR(255) NOT NULL  
);



CREATE TABLE diagnostiquer (
    id INT PRIMARY KEY AUTOINCREMENT,
    id_symtôme INT NOT NULL,
    id_maladie INT NOT NULL,
    FOREIGN KEY (id_symtôme) REFERENCES symptôme(id),
    FOREIGN KEY (id_maladie) REFERENCES maladie (id)    
);


CREATE TABLE détecter (
    id_consultation INT NOT NULL,
    id_symtôme INT NOT NULL,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id),
    FOREIGN KEY (id_symptôme) REFERENCES symptôme (id)
);

 




