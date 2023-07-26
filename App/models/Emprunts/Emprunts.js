import { DataTypes, Model } from "sequelize";
import sequelize from '../../database.js';

class Emprunts extends Model {}
Emprunts.init({
    emprunt_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    date_emprunt: {
        type: DataTypes.DATE,
        allowNull: false,
    },
    date_retour_prevue: {
        type: DataTypes.DATE,
        allowNull: false,
    },
    date_retour_effectif: {
        type: DataTypes.DATE,
        allowNull: true,
    },
    disponibilite_livre: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
    },
},{
    sequelize,
    modelName:'Emprunts',
    tableName:'emprunt',
}
);

// Create the table if it doesn't exist
// Emprunts.sync();

export default Emprunts;
