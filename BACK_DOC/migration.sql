-- Crée une table "Utilisateurs" avec les colonnes suivantes :
CREATE TABLE Utilisateurs (
    utilisateur_id INT PRIMARY KEY, -- Identifiant unique pour chaque utilisateur (clé primaire).
    nom VARCHAR(50), -- Colonne pour stocker le nom de l'utilisateur (texte jusqu'à 50 caractères).
    prenom VARCHAR(50), -- Colonne pour stocker le prénom de l'utilisateur (texte jusqu'à 50 caractères).
    adresse VARCHAR(100), -- Colonne pour stocker l'adresse de l'utilisateur (texte jusqu'à 100 caractères).
    email VARCHAR(100), -- Colonne pour stocker l'adresse e-mail de l'utilisateur (texte jusqu'à 100 caractères).
    telephone VARCHAR(20) -- Colonne pour stocker le numéro de téléphone de l'utilisateur (texte jusqu'à 20 caractères).
);

-- Crée une table "Livres" avec les colonnes suivantes :
CREATE TABLE Livres (
    livre_id INT PRIMARY KEY, -- Identifiant unique pour chaque livre (clé primaire).
    titre VARCHAR(100), -- Colonne pour stocker le titre du livre (texte jusqu'à 100 caractères).
    auteur VARCHAR(100), -- Colonne pour stocker le nom de l'auteur du livre (texte jusqu'à 100 caractères).
    annee_publication INT, -- Colonne pour stocker l'année de publication du livre (nombre entier).
    genre VARCHAR(50), -- Colonne pour stocker le genre du livre (texte jusqu'à 50 caractères).
    disponibilite BOOLEAN -- Colonne pour indiquer si le livre est disponible ou non (valeur booléenne).
);

-- Crée une table "Emprunts" avec les colonnes suivantes :
CREATE TABLE Emprunts (
    emprunt_id INT PRIMARY KEY, -- Identifiant unique pour chaque emprunt (clé primaire).
    utilisateur_id INT, -- Colonne pour stocker l'identifiant de l'utilisateur emprunteur (clé étrangère faisant référence à la table "Utilisateurs").
    livre_id INT, -- Colonne pour stocker l'identifiant du livre emprunté (clé étrangère faisant référence à la table "Livres").
    date_emprunt DATE, -- Colonne pour stocker la date d'emprunt du livre.
    date_retour_prevue DATE, -- Colonne pour stocker la date prévue de retour du livre.
    date_retour_effectif DATE, -- Colonne pour stocker la date réelle de retour du livre.
    disponibilite_livre BOOLEAN, -- Attribut pour gérer la disponibilité du livre lors de l'emprunt
    FOREIGN KEY (utilisateur_id) REFERENCES Utilisateurs (utilisateur_id), -- Clé étrangère reliant "utilisateur_id" à la table "Utilisateurs".
    FOREIGN KEY (livre_id) REFERENCES Livres (livre_id) -- Clé étrangère reliant "livre_id" à la table "Livres".
);




CREATE TABLE Utilisateurs (
    utilisateur_id INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    adresse VARCHAR(100),
    email VARCHAR(100),
    telephone VARCHAR(20)
);
CREATE TABLE Livres (
    livre_id INT PRIMARY KEY,
    titre VARCHAR(100),
    auteur VARCHAR(100),
    annee_publication INT,
    genre VARCHAR(50),
    disponibilite BOOLEAN
);
CREATE TABLE Emprunts (
    emprunt_id INT PRIMARY KEY,
    utilisateur_id INT,
    livre_id INT,
    date_emprunt DATE,
    date_retour_prevue DATE,
    date_retour_effectif DATE,
    disponibilite_livre BOOLEAN,
    FOREIGN KEY (utilisateur_id) REFERENCES Utilisateurs (utilisateur_id),
    FOREIGN KEY (livre_id) REFERENCES Livres (livre_id)
);