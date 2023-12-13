 const express = require('express');
const app = express();

const port = 3418;
app.listen(port, () => {
    console.log("Escuchando en puerto "+port);
});



const static = express.static("public");
app.use(static);

const mainRouter = require('./routes/main-routes');
app.use(mainRouter); 
