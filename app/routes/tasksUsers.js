const express = require("express");
const path = require("path");
const users = require('../models/users');
const router = express.Router();

router.get("/crear", (req, res) => {
  // res.send('');
  res.render(path.join("../public/views/crudUsers/crear.html"));
});
router.get("/eliminar", (req, res) => {
  res.render(path.join("../public/views/crudUsers/eliminar.html"));
});
router.get("/editar", (req, res) => {
  res.render(path.join("../public/views/crudUsers/editar.html"));
});

router.post("/crearUser", async(req,res) => {

   const user = req.body.user;

   await users.findOrCreate({
    where: {
      username: req.body.username
    },
  }).then(function(result) {
    var author = result[0], // the instance of the author
      created = result[1]; // boolean stating if it was created or not

    if (!created) { // false if author already exists and was not created.
      console.log('Author already exists');
      
    }else{
        console.log('Not exists');
        users.create({
            username: req.body.username,
            password: req.body.password,
            firstname: req.body.firstname,
            lastname:req.body.lastName,
            admin: 0
        }).then((user) => res.status(201).send(user));
        console.log('Created');
        
    }
});

   
    res.render(path.join("../public/views/crudUsers/crear.html"));

});

module.exports = router;
