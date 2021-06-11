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
app.use('/tasks',require('./src/routes/tasks')); //Cargando el modulo de tareas CRUD

const db = require('./src/app/db');
// db.sequelize.sync();

db.sequelize.sync({ force: true }).then(() => {
  console.log("Drop and re-sync db.");
});


app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.set('puerto', process.env.PORT || 3000);
app.listen(app.get('puerto'), function () {
  console.log('Example app listening on port ' + app.get('puerto'));
});