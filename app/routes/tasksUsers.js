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

  await users.findOrCreate({
    where: {//object containing fields to found
        username: req.body.username,
        password: req.body.password
    },
    defaults: {//object containing fields and values to apply
        username: req.body.username,
        password: req.body.password
    }
    }).then(function(){//run your calllback here
        console.log('Created');
      console.log("callback!!");
      res.status(201).send(req.body);
    }).catch(err => {
      res.status(500).send("Error -> " + err);
    });

    //res.render(path.join("../public/views/crudUsers/crear.html"));

});

module.exports = router;
