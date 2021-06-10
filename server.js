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
app.use(express.urlencoded({ extended: true }));
app.use(express.json()); // TRATA DE DATOS EN JSON
app.use(express.static(path.join(__dirname, 'public'))); //EXECUTE index.html in src/public

//ROUTES


app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.set('puerto', process.env.PORT || 3000);
app.listen(app.get('puerto'), function () {
  console.log('Example app listening on port'+ app.get('puerto'));
});