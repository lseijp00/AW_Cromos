const express = require("express");
const path = require("path");
const Users = require("../models/users");
const router = express.Router();

router.get("/crear", (req, res) => {
  res.render(path.join("../public/views/crudUsers/crear.html"));
});

router.get("/eliminar", (req, res) => {
  res.render(path.join("../public/views/crudUsers/eliminar.html"));
});


router.get('/logout',(req,res) => {
      res.redirect('/');

});


router.post("/eliminar", (req, res) => {
    Users.destroy({ where : {
        username : req.body.id
    }}).then((respuesta) =>{
        console.log(respuesta);
        if(respuesta == 1){
            res.send("Eliminado correctamente");
        }else{
            res.send("NO ELIMINADO");
        }
    }).catch(err => {
        res.status(404).send("Error -> " + err);
      });;
  });

router.get("/editar", (req, res) => {
  res.render(path.join("../public/views/crudUsers/editar.html"));
});

//Get lista de usuarios
router.get("/ver", async (req, res) => {

   let users =  await Users.findAll().then(function (users) {
    
    console.log("All users:", JSON.stringify(users, null, 2));
    res.render(path.join("../public/views/crudUsers/verUsuarios.html"),{users:users});
   }).catch(err => {
    res.status(404).send("Error -> " + err);
  });


    
  });



// Post en crear
router.post("/crearUser", async(req,res) => {

  await Users.findOrCreate({
    where: {//object containing fields to found

        firstname: req.body.firstname,
        lastname: req.body.lastname,
        username: req.body.username,
        password: req.body.password
    },
    defaults: {//object containing fields and values to apply

        firstname: req.body.firstname,
        lastname: req.body.lastname,
        username: req.body.username,
        password: req.body.password
    }
    }).then(function(){ //run your calllback here
      
      console.log("In callback created!!");
      res.status(201).send(req.body);
    }).catch(err => {
      res.status(500).send("Error -> " + err);
    });

    //res.render(path.join("../public/views/crudUsers/crear.html"));

});



module.exports = router;
