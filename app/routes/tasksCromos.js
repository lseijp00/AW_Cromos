const express = require("express");
const path = require("path");
const Cromos = require("../models/cromos");
const router = express.Router();

router.get("/crear", (req, res) => {
  res.render(path.join("../public/views/crudCromo/crear.html"));
});
router.get("/eliminar", (req, res) => {
  res.render(path.join("../public/views/crudCromo/eliminar.html"));
});
router.get("/editar", (req, res) => {
  res.render(path.join("../public/views/crudCromo/editar.html"));
});

router.post("/crearCromo",  async (req, res) => {

    await Cromos.findOrCreate({
        where: {//object containing fields to found

            name: req.body.firstname,
            imagen: req.body.url,
            puntos: req.body.quantity,
        },
        defaults: {//object containing fields and values to apply
    
            name: req.body.firstname,
            imagen: req.body.url,
            puntos: req.body.quantity,
        }
    }).then(function(){ //run your calllback here
      
        console.log("In callback created!!");
        //res.status(201).send(req.body);
        res.render(path.join("../public/views/crudCromo/crear.html"));

      }).catch(err => {
        res.status(500).send("Error -> " + err);
      });
    
      
  });


router.get("/logout", (req, res) => {
  res.redirect("/");
});
module.exports = router;
