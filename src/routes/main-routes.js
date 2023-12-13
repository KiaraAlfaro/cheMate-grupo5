const express = require("express");
const router = express.Router();

const mainController = require("../controllers/main-controllers");

router.get('/', mainController.home);
router.get('/catalogo', mainController.catalogo);
router.get('/contacto', mainController.contacto);
router.get('/detalleProd', mainController.detalleProd);
router.get('/carrito', mainController.carrito );
module.exports = router;
 







