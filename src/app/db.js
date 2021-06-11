const dbConfig = require('./db.config');
const Sequelize = require("sequelize");


const sequelize = new Sequelize(dbConfig.local.database, dbConfig.local.user, dbConfig.local.password,{
    host: 'localhost',
    dialect: 'mysql'
  });

  try {
     sequelize.authenticate();
    console.log('Connection has been established successfully to DB.');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }

  const db = {};

  db.Sequelize = Sequelize;
  db.sequelize = sequelize;
    
  module.exports = db;