import sequelize from './App/database.js';
import Livres from './App/models/Livres/Livres.js';
import Utilisateur from './App/models/Utilisateur/Utilisateur.js';
import Emprunts from './App/models/Emprunts/Emprunts.js';



await sequelize.drop();
await sequelize.sync();
try {
    await Utilisateur.create({
        nom:"CRUCHOT",
        prenom:"Ludovic",
        adresse:"Place de la Garonne 83990 Saint-Tropez",
        email:"ludo@cruchot.fr",
        telephone:'04 94 55 90 20'
    });
    await Livres.create({
        titre:'Allez tous vous faire foutre',
        auteur:'Aidan Trhuen',
        annee_publication:'2018',
        genre:'Policier',
    });
    await Emprunts.create({
    });
    
} catch (error) {
    console.error('error');
}