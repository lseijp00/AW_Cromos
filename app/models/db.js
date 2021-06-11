const dbConfig = require('../config/db.config');
const Sequelize = require("sequelize");


const sequelize = new Sequelize(dbConfig.local.database, dbConfig.local.user, dbConfig.local.password,{
    host: 'localhost',
    dialect: 'mysql'
  });


  //La coenxión no se cierra hasta que queramos nosotros
  const db = {};

  db.Sequelize = Sequelize;
  db.sequelize = sequelize;
    
  module.exports = sequelize;