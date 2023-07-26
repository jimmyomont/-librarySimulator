import { DataTypes, Model } from "sequelize";
import sequelize from '../../database.js';

class Livres extends Model { }
Livres.init({
    livre_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    titre: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    auteur: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    annee_publication: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    genre: {
        type: DataTypes.STRING(50),
        allowNull: true,
    },
    disponibilite: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
        defaultValue: true,
    },
}, {
    sequelize,
    modelName: 'Livres',
    tableName: 'livres',
});

// Create the table if it doesn't exist
// Livres.sync();

export default Livres;
