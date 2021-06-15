const {Model, DataTypes} = require('sequelize');
const sequelize = require('./db');

class Users extends Model{}

 Users.init({
      id: {
          autoIncrement: true,
          primaryKey: true,
          autoIncrement: true,
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
      admin: {
          type:DataTypes.INTEGER,
          allowNull: false
      }
    },{
    
      sequelize: sequelize,
      modelName: 'users'
    
  });

module.exports = Users;