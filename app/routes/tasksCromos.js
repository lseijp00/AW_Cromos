
const express = require('express');
const path = require('path');

const router = express.Router();

router.get('/crear', (req, res) =>{

   
    res.render(path.join('../public/views/crudCromo/crear.html'));

});
router.get('/eliminar', (req, res) =>{

    res.render(path.join('../public/views/crudCromo/eliminar.html'));
});
router.get('/editar', (req, res) =>{

    res.render(path.join('../public/views/crudCromo/editar.html'));});

module.exports =router;
