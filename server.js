//Some of these items are imported from an old project of mine. I will use almost all of these
//and try to reduce some of the redudancies later.

var fs = require('fs');
var path = require('path');
var express = require('express');
var bodyParser = require('body-parser');
var express_handlebars = require('express-handlebars'); 
var app = express();
var port = process.env.PORT || 3000;

app.engine('handlebars', express_handlebars({defaultLayout: 'skeleton'}));
app.set('view engine', 'handlebars');

//Main webpage
app.get('/', function (req, res, next) {
    res.render('404');
    res.status(200);
});

//404 Page
app.get('*', function (req, res, next) {
    res.render('partials/404');
    res.status(400);
});

app.listen(port, function() {
    console.log("Listening on Port", port);
});