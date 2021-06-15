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



//ROUTES
// Añadiendo el primer parametro decimos que siempre empiezan las rutas por :/tasks
app.use('/tasksCromos', require('./app/routes/tasksCromos')); //Cargando el modulo de tareas CRUD Cromos
app.use('/tasksUsers', require('./app/routes/tasksUsers')); //Cargando el modulo de tareas CRUD



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
  },30000))


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



app.get('/public/views/paginaComprarCromos.html', async(req, res)=> {

    let arrayCromosOliver = await cromos.findAll({
       where:{
           id: 
               [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50],
       }

    })
    let arrayCromosHarry = await cromos.findAll({
        where:{
            id: 
                [51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100],
        }
 
     })

    res.render(path.join(__dirname + '/public/views/paginaComprarCromos.html'), {arrayCromosOliver:arrayCromosOliver,arrayCromosHarry:arrayCromosHarry});

});


//formulario registrarse
app.post("/public/views/paginaRegistrarse.html", async (req,res)=>{
    const user = req.body.user;
    users.create({
        username: req.body.username,
        password: req.body.password,
        firstname: req.body.firstname,
        lastname:req.body.lastName,
        admin: 0
    }).then((user) => res.status(201).send(user)).catch((error) => {
       console.log("HOLA error");
    });
    res.render(path.join(__dirname + '/public/views/index.html'));

});

//formulario inicio sesion
app.post("/public/views/paginaColeccionCromos.html", async(req,res) =>{
    const username = req.body.username;
    const password = req.body.password;
    
    //devolvera null si no existe el usuario
    const user = await users.findOne({ where: { username:username,password:password } });

   

    if (user === null) {
        console.log('Not found!');
       
        res.render(path.join(__dirname + '/public/views/index.html'), {
            isAuth:false,
            username:username
          });
          
    } else if(user.admin == 0){

        console.log("USUARIO "+user.username);
        console.log("PASSWORD " +user.password);
        console.log("Admin " +user.admin);
        console.log("Admin " +user.firstname);

        req.session.loggedin = true;
        req.session.username = username;
        req.session.usuario='Luis Seijas'
        req.session.rol='Admin'
        req.session.visitas= req.session.visitas ? ++req.session.visitas : 1;
        if(req.session.username!=undefined){
            res.render(path.join(__dirname + '/public/views/paginaColeccionCromos.html'), {
                isAuth:true,
                visitas:req.session.visitas,
                usuario:req.session.usuario
            });
        }

    }else{
        req.session.loggedin = true;
        req.session.username = username;
        res.render(path.join(__dirname + '/public/views/indexAdmin.html') );
        
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