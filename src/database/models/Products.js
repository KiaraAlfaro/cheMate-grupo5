module.exports = (sequelize, DataTypes) => {
    let alias = "Products";

    let cols = {
        id: {
            type: DataTypes.INTEGER(10).UNSIGNED,
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            type: DataTypes.STRING(255),
            allowNull: false
        },
        category_id: {
            type: DataTypes.STRING,
            allowNull: false
        },
        price: {
            type: DataTypes.INTEGER.UNSIGNED,
            allowNull: false
        },
        img: {
            type: DataTypes.STRING(255),
            allowNull: true
        }
    };

    let config = {
        tableName: "products",
        timestamps: false
    };

    const Products = sequelize.define(alias, cols, config);

    // Asociación con Images
    Products.associate = function (models) {
        Products.hasMany(models.Images, {
            as: 'Images',
            foreignKey: 'product_id'
        });

        // Corrige la asociación a belongsToMany
        Products.belongsTo(models.Categories, {
            as: 'Categories',
            foreignKey: 'category_id'
        });
    };

    return Products;
};
