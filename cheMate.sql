/* DROP DATABASE IF EXISTS cheMate_db;
CREATE DATABASE cheMate_db;

USE cheMate_db;

CREATE TABLE categories (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
);

INSERT INTO categories (name) VALUES ('Mates'),('Termos'),('Bombillas'),('Materos'),


CREATE TABLE products (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    --category_id INT NOT NULL,
    price INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    img VARCHAR(255) NOT NULL
);
INSERT INTO products (name, price, description, img) VALUES ('Pan 1', 1, 100, 'Descripción 1'),('Pan 2', 1, 200, 'Descripción 2'),('Pan 3', 1, 200, 'Descripción 3'),('Pan 4', 1, 200, 'Descripción 4'),('Pan 5', 2, 200, 'Descripción 5');


CREATE TABLE category_products (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    products_id INT NOT NULL,
    categories_id INT NOT NULL
);
 */

/*++++++++++++++++++++++++++++++++++++++++++*/
DROP DATABASE IF EXISTS cheMate_db;
CREATE DATABASE cheMate_db;

USE cheMate_db;

CREATE TABLE categories (
  id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO categories (id, name) VALUES(DEFAULT, 'Mates'),(DEFAULT, 'Termos'),(DEFAULT, 'Bombillas'),(DEFAULT, 'Bolso Matero');



CREATE TABLE categories_products (
  id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  category_id INT(10) UNSIGNED DEFAULT NULL,
  product_id INT(10) UNSIGNED DEFAULT NULL,
  FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
INSERT INTO categories_products (category_id, product_id) VALUES( 1, 1),( 1, 2),( 1, 3),(2, 2),( 3, 3);



CREATE TABLE images (
  id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  filename VARCHAR(255) NOT NULL,
  product_id INT(10) UNSIGNED DEFAULT NULL,
  FOREIGN KEY (product_id) REFERENCES products(id)
  fk_images_products FOREIGN KEY (product_id) REFERENCES products (id)
);



INSERT INTO images (img, product_id) VALUES( 'mate01.jpg', 1),( 'mate02.jpg', 2),( 'mate03.jpg', 3),( 'mate04.jpg', 4),( 'mate05.jpg', 5),( 'termo01.jpg', 6),( 'termo02.jpg', 7),( 'termo03.jpg', 8),( 'termo04.jpg', 9),
( 'termo05.jpg', 10),( 'termo06.jpg', 11),( 'termo07.jpg', 12),( 'termo08.jpg', 13),( 'bombilla.jpeg', 14),( 'bombilla02.jpg', 15),( 'bombilla03.jpg', 16),( 'bombilla04.jpg', 17),( 'bombilla01.jpg', 18),( 'matero01.png', 19),
( 'matero02.png', 20),( 'matero03.png', 21),( 'matero04.png', 22),('matero05.png', 23);



CREATE TABLE products (
  id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  category_id VARCHAR(50) NOT NULL,
  price INT(10) UNSIGNED DEFAULT NULL,
  brand_id INT(10) UNSIGNED,
  img VARCHAR(255) NOT NULL
);
INSERT INTO products (id, name, category_id, price) VALUES(DEFAULT, 'Mate 1', 'Mates', 1000),(DEFAULT, 'Mate 2', 'Mates', 1000),(DEFAULT, 'Mate 3', 'Mates', 1000),(DEFAULT, 'Mate 4', 'Mates', 1000),(DEFAULT, 'Mate 5', 'Mates', 1000),
(DEFAULT, 'Termo Waterdog', 'Termos', 1000),(DEFAULT, 'Termo Stanley Rosa', 'Termos', 1000),(DEFAULT, 'Termo Stanley Azul', 'Termos', 1000),(DEFAULT, 'Termo Stanley Cobre', 'Termos', 1000),(DEFAULT, 'Termo Stanley Blanco', 'Termos', 1000),
(DEFAULT, 'Termos', 'Termos', 1000),(DEFAULT, 'Termo Termolar Marron', 'Termos', 1000),(DEFAULT, 'Termo Lumilagro Argentina', 'Termos', 1000),(DEFAULT, 'Bombilla 1', 'Bombillas', 1000),(DEFAULT, 'Bombilla 2', 'Bombillas', 1000),
(DEFAULT, 'Bombilla 3', 'Bombillas', 1000),(DEFAULT, 'Bombilla 4', 'Bombillas', 1000),(DEFAULT, 'Bombilla 5', 'Bombillas', 1000),(DEFAULT, 'Matero 01', 'Bolso Matero', 1000),(DEFAULT, 'Matero 02', 'Bolso Matero', 1000),
(DEFAULT, 'Matero 03', 'Bolso Matero', 1000),(DEFAULT, 'Matero 04', 'Bolso Matero', 1000),(DEFAULT, 'Matero 05', 'Bolso Matero', 1000);


