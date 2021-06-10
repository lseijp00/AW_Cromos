//Configuración archivo Servidor

//Common JS
const express = require('express');
const app = express();

const morgan = require('morgan');
const cors = require('cors');
app.use(express.json());
const path = require('path');

//MIDDLEWARES
app.use(morgan('tiny'));
app.use(cors());
app.use(express.urlencoded({ extended: true }))
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.set('puerto', process.env.PORT || 3000);
app.listen(app.get('puerto'), function () {
  console.log('Example app listening on port'+ app.get('puerto'));
});