
const express = require('express');

const router = express.Router();

router.get('/crear', (req, res) =>{

    res.send('API crear');
});
router.get('/eliminar', (req, res) =>{

    res.send('API eliminar');
});
router.get('/editar', (req, res) =>{

    res.send('API editar');
});



module.exports =router;
