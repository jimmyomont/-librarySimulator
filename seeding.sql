-- Insertion des utilisateurs
INSERT INTO Utilisateurs (utilisateur_id, nom, prenom, adresse, email, telephone)
VALUES
    (1, 'Dupont', 'Jean', '123 Rue de la Librairie', 'jean.dupont@email.com', '01 23 45 67 89'),
    (2, 'Martin', 'Sophie', '456 Avenue des Livres', 'sophie.martin@email.com', '98 76 54 32 10'),
    (3, 'Lefebvre', 'Pierre', '789 Boulevard des Lecteurs', 'pierre.lefebvre@email.com', '12 34 56 78 90');

-- Insertion des livres
INSERT INTO Livres (livre_id, titre, auteur, annee_publication, genre, disponibilite)
VALUES
    (1, 'Le Seigneur des Anneaux', 'J.R.R. Tolkien', 1954, 'Fantasy', true),
    (2, 'Orgueil et Préjugés', 'Jane Austen', 1813, 'Romance', true);

-- Insertion des emprunts
INSERT INTO Emprunts (emprunt_id, utilisateur_id, livre_id, date_emprunt, date_retour_prevue, date_retour_effectif)
VALUES
    (1, 1, 1, '2023-07-24', '2023-08-07', NULL),
    (2, 2, 2, '2023-07-25', '2023-08-08', NULL),
    (3, 3, 1, '2023-07-26', '2023-08-09', NULL);

-- Insérer 5 nouveaux livres
INSERT INTO Livres (livre_id, titre, auteur, annee_publication, genre, disponibilite)
VALUES
    (4, 'Le Petit Prince', 'Antoine de Saint-Exupéry', 1943, 'Conte', true),
    (5, '1984', 'George Orwell', 1949, 'Science-fiction', true),
    (6, 'Le Comte de Monte-Cristo', 'Alexandre Dumas', 1844, 'Aventure', true),
    (7, 'Le Nom de la Rose', 'Umberto Eco', 1980, 'Mystère', true),
    (8, 'Orgueil et Préjugés', 'Jane Austen', 1813, 'Romance', true);
