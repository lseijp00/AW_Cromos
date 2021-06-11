//Configuración archivo Servidor

//Common JS -> Aunque con babel podemos pasarlo
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const path = require('path');
const app = express();


app.use(express.json());


//MIDDLEWARES
app.use(morgan('tiny')); //HTTP REQUEST LOGGER
app.use(cors()); //CONNECT TO EXPRESS
app.use(express.urlencoded({ extended: true })); //CODIFICACIÓN DE LA URL
app.use(express.json()); // TRATA DE DATOS EN JSON
app.use(express.static(path.join(__dirname, 'public'))); //EXECUTE index.html in src/public

//ROUTES
// Añadiendo el primer parametro decimos que siempre empiezan las rutas por :/tasks
app.use('/tasks',require('./app/routes/tasks')); //Cargando el modulo de tareas CRUD
/*
const db = require('./app/models/db');
db.sequelize.sync({ force: true }).then(() => {
  console.log("Drop and re-sync db.");
});
*/


//Connection
var connection = require('./app/models/db');

//Crea la tabla
const cromos = require('./app/models/cromos');

app.get('/', function (req, res) {
  
  cromos.create({
    id: 2,
    title: 'Segundo CROMO',
    description: '2er Cromo de la primera coleccion',
    collection: true
  }).then(cromo => {
    res.json(cromo)
  });
});

app.set('puerto', process.env.PORT || 3000);
app.listen(app.get('puerto'), function () {
  console.log('Example app listening on port ' + app.get('puerto'));
  // Conexion a la base de datos

  try {
   // connection.authenticate(); -> Prueba la conexión
   connection.sync({force: false}); // El farce false no reinicia las tablas constantemente
   console.log('Connection has been established successfully to DB.');
 } catch (error) {
   console.error('Unable to connect to the database:', error);
 }
});