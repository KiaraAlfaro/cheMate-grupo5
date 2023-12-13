module.exports = (sequelize, DataTypes) => {
    let alias = "Images";

    let cols = {
        id: {
            type: DataTypes.INTEGER(10).UNSIGNED,
            autoIncrement: true,
            primaryKey: true
        },
        filename: {
            type: DataTypes.STRING(255),
            
        },
        product_id: {
            type: DataTypes.INTEGER(10).UNSIGNED,
            
        },
        
    };

    let config = {
        tableName: "images",
        timestamps: false,
    };

    const Model = sequelize.define(alias, cols, config);

    Model.associate = (models) => {
        Model.belongsTo(models.Products, {
            as: "Product",
            foreignKey: "product_id"
        })
    }

    return Model;
}