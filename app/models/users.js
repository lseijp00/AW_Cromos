const {Model, DataTypes} = require('sequelize');
const sequelize = require('./db');

class Users extends Model{}

 Users.init({
      id: {
          autoIncrement: true,
          primaryKey: true,
          autoIncrement: true,
          unique: true,
          type: DataTypes.INTEGER
      },

      firstname: {
          type: DataTypes.STRING,
          notEmpty: true
      },

      lastname: {
          type: DataTypes.STRING,
          notEmpty: true
      },

      username: {
          type: DataTypes.TEXT,
          notEmpty: true
      },

      password: {
          type: DataTypes.STRING,
          notEmpty: true
          
      },
      admin: {
          type:DataTypes.INTEGER,
          notEmpty: true
         
      }
    },{
    
      sequelize: sequelize,
      modelName: 'users'
    
  });

module.exports = Users;