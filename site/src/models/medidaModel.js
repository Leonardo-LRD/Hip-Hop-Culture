var database = require("../database/config");


function buscarMusicasFavoritas() {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `
            SELECT 
                titulo, 
                COUNT(fk_musica) AS votos 
                    FROM [dbo].[usuario] 
                        JOIN [dbo].[musica] ON fk_musica = id_musica GROUP BY fk_musica,titulo ORDER BY titulo DESC;
        `;

    } 
    else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `
            SELECT 
                musica.titulo, 
                COUNT(fk_musica) AS votos 
                    FROM usuario 
                        JOIN musica ON fk_musica = id_musica GROUP BY fk_musica ORDER BY titulo DESC;
        `;
    } 
    else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarMusicasFavoritas
}
