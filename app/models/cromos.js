

const {Model, DataTypes} = require('sequelize');
const sequelize = require('./db');

class Cromos extends Model {}
  Cromos.init({
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true
     },
   title: {
     type: DataTypes.STRING
   },
   description: {
     type: DataTypes.STRING
   },
   collection: {
     type: DataTypes.BOOLEAN
   }
  },{
    
      sequelize: sequelize,
      modelName: 'cromos'
    
  });

module.exports = Cromos;

  

  
