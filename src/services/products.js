const { Products, Categories, Images } = require('../database/models/index');

const Service = {
    create: async (data) => {
        let newProduct = {
            name: data.name,
            price: data.price,
            category_id: data.category
        };
        await Products.create(newProduct);
    }, 

    findAll: async () => {
        let prods = await Products.findAll({
            include: [
                { model: Images, as: 'Images' },
                { model: Categories, as: 'Categories' }
            ]
        });
        
        return prods;
    }, 

    findById: async (id) => {
        let productFound = await Products.findOne({
            where: {
                id: id
            }
        });
        return productFound;
    }, 

    update: async (id, data) => {
        let newData = {
            name: data.name,
            price: data.price,
            category_id: data.category
        };

        let resultado = await Products.update(newData, {
            where: {
                id: id
            }
        });

        return resultado;
    }, 

    delete: async (id) => {
        let resultado = await Products.destroy({
            where: {
                id: id
            }
        });

        return resultado;
    } 
};

module.exports = Service;

