//Configuración archivo Servidor

//Common JS -> Aunque con babel podemos pasarlo
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const path = require('path');
const app = express();

app.use(express.urlencoded({extended:false}));
app.use(express.json());


//MIDDLEWARES
app.use(morgan('tiny')); //HTTP REQUEST LOGGER
app.use(cors()); //CONNECT TO EXPRESS
app.use(express.urlencoded({ extended: true })); //CODIFICACIÓN DE LA URL
app.use(express.json()); // TRATA DE DATOS EN JSON
app.use(express.static(path.join(__dirname, '/public'))); //EXECUTE index.html in src/public
app.engine('html', require('ejs').renderFile);


console.log(__dirname)

//ROUTES
// Añadiendo el primer parametro decimos que siempre empiezan las rutas por :/tasks
app.use('/tasks', require('./app/routes/tasks')); //Cargando el modulo de tareas CRUD
/*
const db = require('./app/models/db');
db.sequelize.sync({ force: true }).then(() => {
  console.log("Drop and re-sync db.");
});
*/

//sweetalert2
const Swal = require('sweetalert2')

//variable de sesion
const session = require("express-session")
app.set('trust proxy', 1)
app.use(session({
    secret: 'keyboard cat',
    resave: false,
    saveUninitialized: true,
    cookie: { secure: true }
  }))

//Connection
var connection = require('./app/models/db');
//bcrypt
//Crea la tabla
const cromos = require('./app/models/cromos');
const users = require('./app/models/users');

app.get('/', function(req, res) {
    res.render(path.join(__dirname + '/public/views/index.html'));
});

app.get('/public/views/paginaColeccionCromos.html', function(req, res) {
    res.render(path.join(__dirname + '/public/views/paginaColeccionCromos.html'));
});

app.get('/public/views/paginaComprarCromos.html', function(req, res) {
    res.render(path.join(__dirname + '/public/views/paginaComprarCromos.html'));
});


//formulario registrarse
app.post("/public/views/paginaRegistrarse.html", async (req,res)=>{
    const user = req.body.user;
    const password = req.body.password;
    const lastname = req.body.lastName;
    const name = req.body.name;
    users.create({
        username: req.body.username,
        password: req.body.password,
        firstname: req.body.firstname,
        lastname:req.body.lastName
    }).then((user) => res.status(201).send(user)).catch((error) => {
        console.log(error);
        res.status(400).send(error);
    });
    res.render(path.join(__dirname + '/public/views/index.html'));

});

//formulario inicio sesion
app.post("/public/views/paginaColeccionCromos.html", async(req,res)=>{
    const username = req.body.username;
    const password = req.body.password;
    console.log(username)
    console.log(password)
    
    //devolvera null si no existe el usuario
    const user = await users.findOne({ where: { username:username,password:password } });

    if (user === null) {
        console.log('Not found!');

        res.render(path.join(__dirname + '/public/views/index.html'), {
            isAuth:false,
            username:username
          });
   
    } else {
        console.log("USUARIO "+user.username);
        console.log("PASSWORD " +user.password);
        req.session.loggedin = true;
        req.session.username = username;
        req.session.usuario='Luis Seijas'
        req.session.rol='Admin'
        req.session.visitas= req.session.visitas ? ++req.session.visitas : 1;
        console.log(req.session)
        if(req.session.username!=undefined){
            res.render(path.join(__dirname + '/public/views/paginaColeccionCromos.html'), {
                isAuth:true,
                visitas:req.session.visitas,
                usuario:req.session.usuario
            });
        }

    }
})


app.get('/public/views/logout',(req,res) => {
    req.session.destroy(() => {
        res.redirect('/');
    });

});

app.set('puerto', process.env.PORT || 8888);
app.listen(app.get('puerto'), function() {
    console.log('Example app listening on port ' + app.get('puerto'));
    // Conexion a la base de datos

    try {
        // connection.authenticate(); -> Prueba la conexión
        connection.sync({ force: false }); // El farce false no reinicia las tablas constantemente
        console.log('Connection has been established successfully to DB.');
    } catch (error) {
        console.error('Unable to connect to the database:', error);
    }
});