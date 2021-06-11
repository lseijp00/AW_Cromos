module.exports = {
    local: {
      host: 'localhost',
      database: 'cromos',
      dialect: 'mysql',
      user: 'root',
      password: 'password',
      port: 3306
    }
  };


/*
max: maximum number of connection in pool
min: minimum number of connection in pool
idle: maximum time, in milliseconds, that a connection can be idle before being released
acquire: maximum time, in milliseconds, that pool will try to get connection before throwing error
*/