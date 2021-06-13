const {Model, DataTypes} = require('sequelize');
const sequelize = require('./db');

class Users extends Model{}

 
 Users.init({

      id: {
          autoIncrement: true,
          primaryKey: true,
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
          type: DataTypes.TEXT
      },

      password: {
          type: DataTypes.STRING,
          allowNull: false
      },
    },{
    
      sequelize: sequelize,
      modelName: 'users'
    
  });

module.exports = Users;