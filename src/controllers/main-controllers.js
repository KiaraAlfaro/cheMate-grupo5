
/* const path = require('path')

const controller = {
    home: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/home.html'));
    },

    catalogo: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/catalogo.html'));
    },

    contacto: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/contacto.html'));
    },

    detalleProd: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/detalleProd.html'));
    },

    carrito: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/carrito.html'));
    },

    

}

module.exports = controller; */
/**---------------------------------------------------- */

const service = require('../services/products');
const path = require('path');
const products = require('../services/products')

let baseUrl = "http://localhost:3418"
let url = '../views/home.html'

const controller = {
    home: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/home.html'));
    },
    /*   catalogo: async(req, res) => {
        await res.sendFile(path.join(__dirname, '../views/catalogo.html'));
    }, */  

    /*  catalogo: async (req, res) => {
        try {
            const productList = await service.findAll();
            res.json(productList);
        } catch (error) {
            console.error('Error al obtener productos:', error);
            res.status(500).json({ error: 'Error interno del servidor' });
        }
    },  */
    catalogo: async (req, res) => {
        const productList = await service.findAll();
            if (req.xhr) {
                res.json(productList);
            } else {
                res.sendFile(path.join(__dirname, '../views/catalogo.html'));
            }
        
    },



    
   
    contacto: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/contacto.html'));
    },

    detalleProd: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/detalleProd.html'));
    },

    carrito: (req, res) => {
        res.sendFile(path.join(__dirname, '../views/carrito.html'));
    },



    
}
module.exports = controller; 


