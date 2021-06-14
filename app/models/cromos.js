

const {Model, DataTypes} = require('sequelize');
const sequelize = require('./db');

class Cromos extends Model {}
  Cromos.init({
    id: {
      primaryKey: true,
      autoIncrement: true,
      type: DataTypes.INTEGER

     },
   name: {
     type: DataTypes.STRING
   },
   imagen: {
    type: DataTypes.STRING
  },
   puntos: {
     type: DataTypes.INTEGER
   }
  },{
    
      sequelize: sequelize,
      modelName: 'cromos'
    
  });

module.exports = Cromos;

  

  
