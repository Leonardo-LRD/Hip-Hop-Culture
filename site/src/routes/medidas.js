var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/votes", function (req, res) {
    medidaController.buscarMusicasFavoritas(req, res);
})

module.exports = router;