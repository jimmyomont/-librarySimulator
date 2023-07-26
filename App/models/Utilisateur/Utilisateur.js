import { DataTypes, Model } from "sequelize";
import sequelize from '../../database.js';

class Utilisateur extends Model { }
Utilisateur.init({
    utilisateur_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    nom: {
        type: DataTypes.STRING(50),
        allowNull: false,
    },
    prenom: {
        type: DataTypes.STRING(50),
        allowNull: false,
    },
    adresse: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    email: {
        type: DataTypes.STRING(100),
        allowNull: false,
        unique: true,
    },
    telephone: {
        type: DataTypes.STRING(20),
        allowNull: false,
    },
}, {
    sequelize,
    modelName: 'Utilisateur',
    tableName: 'utilisateur',
});

// Create the table if it doesn't exist
// Utilisateur.sync();

export default Utilisateur;
