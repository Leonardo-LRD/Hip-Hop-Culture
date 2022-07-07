var medidaModel = require("../models/medidaModel");


function buscarMusicasFavoritas(req, res) {
    console.log(`Recuperando votos`);

    medidaModel.buscarMusicasFavoritas().then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } 
        else {
            res.status(204).send("Nenhum voto encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    buscarMusicasFavoritas
}