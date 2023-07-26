-- Sélectionner tous les utilisateurs
SELECT * FROM Utilisateurs;

-- Sélectionner tous les livres
SELECT * FROM Livres;

-- Sélectionner tous les emprunts
SELECT * FROM Emprunts;

-- Sélectionner tous les utilisateurs
SELECT * FROM Utilisateurs;


-- Insérer un nouvel utilisateur
INSERT INTO Utilisateurs (utilisateur_id, nom, prenom, adresse, email, telephone)
VALUES (4, 'Dubois', 'Marie', '789 Rue des Lecteurs', 'marie.dubois@email.com', '45 67 89 10');

-- Insérer un nouveau livre
INSERT INTO Livres (livre_id, titre, auteur, annee_publication, genre, disponibilite)
VALUES (3, 'Harry Potter à l école des sorciers', 'J.K. Rowling', 1997, 'Fantasy', true);

-- Effectuer un emprunt
INSERT INTO Emprunts (emprunt_id, utilisateur_id, livre_id, date_emprunt, date_retour_prevue,disponibilite_livre)
VALUES (4, 1, 2, '2023-07-24', '2023-08-07', FALSE);

-- Mettre à jour la disponibilité du livre 
UPDATE Emprunts SET disponibilite_livre= TRUE WHERE emprunt_id = 4 ;


-- Sélectionner les informations d'un utilisateur spécifique et les livres qu'il a empruntés
SELECT Utilisateurs.nom, Utilisateurs.prenom, Livres.titre, Livres.auteur, Emprunts.date_emprunt, Emprunts.date_retour_prevue, Emprunts.date_retour_effectif
FROM Utilisateurs
JOIN Emprunts ON Utilisateurs.utilisateur_id = Emprunts.utilisateur_id
JOIN Livres ON Emprunts.livre_id = Livres.livre_id
WHERE Utilisateurs.utilisateur_id = 1;



-------------------------------------------------------------------------------

-- Sélectionner les attributs nom, prénom du tableau Utilisateurs,
-- titre et auteur du tableau Livres,
-- date_emprunt, date_retour_prevue et date_retour_effectif du tableau Emprunts
SELECT Utilisateurs.nom, Utilisateurs.prenom, Livres.titre, Livres.auteur, Emprunts.date_emprunt, Emprunts.date_retour_prevue, Emprunts.date_retour_effectif

-- Joindre le tableau Utilisateurs avec le tableau Emprunts
-- en utilisant l'attribut utilisateur_id qui est présent dans les deux tableaux
JOIN Emprunts ON Utilisateurs.utilisateur_id = Emprunts.utilisateur_id

-- Joindre le tableau Livres avec le tableau Emprunts
-- en utilisant l'attribut livre_id qui est présent dans les deux tableaux
JOIN Livres ON Emprunts.livre_id = Livres.livre_id

-- Filtrer les résultats pour n'afficher que les enregistrements
-- où l'attribut utilisateur_id du tableau Utilisateurs est égal à 1
WHERE Utilisateurs.utilisateur_id = 1;


-- ajouter des livres 


INSERT INTO Livres (livre_id, titre, auteur, annee_publication, genre, disponibilite)
VALUES
    (1, 'Le Seigneur des Anneaux', 'J.R.R. Tolkien', 1954, 'Fantasy', true),
    (2, 'Orgueil et Préjugés', 'Jane Austen', 1813, 'Romance', true);
    INSERT INTO Livres (livre_id, titre, auteur, annee_publication, genre, disponibilite)
VALUES
    (3, 'Le Petit Prince', 'Antoine de Saint-Exupéry', 1943, 'Conte', true),
    (4, '1984', 'George Orwell', 1949, 'Science-Fiction', true),
    (5, 'Le Comte de Monte-Cristo', 'Alexandre Dumas', 1844, 'Roman d aventure', true),
    (6, 'La Guerre des mondes', 'H.G. Wells', 1898, 'Science-Fiction', true),
    (7, 'Le Nom de la rose', 'Umberto Eco', 1980, 'Roman historique', true),
    (8, 'L Alchimiste', 'Paulo Coelho', 1988, 'Roman initiatique', true),
    (9, 'Les Misérables', 'Victor Hugo', 1862, 'Roman historique', true),
    (10, 'La Nuit des temps', 'René Barjavel', 1968, 'Science-Fiction', true),
    (11, 'Le Meilleur des mondes', 'Aldous Huxley', 1932, 'Science-Fiction', true),
    (12, 'Les Quatre Filles du docteur March', 'Louisa May Alcott', 1868, 'Roman jeunesse', true);
