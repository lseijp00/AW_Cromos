
const express = require('express');
const path = require('path');

const router = express.Router();

router.get('/crear', (req, res) =>{

   // res.send('');
    res.render(path.join('../public/views/crudUsers/crear.html'));
});
router.get('/eliminar', (req, res) =>{

    res.render(path.join('../public/views/crudUsers/eliminar.html'));
});
router.get('/editar', (req, res) =>{

    res.render(path.join('../public/views/crudUsers/editar.html'));});

module.exports =router;
