function cadastrarMusicaFav() {
    aguardar();

    //Recupere o valor da nova input pelo nome do id
    // Agora vá para o método fetch logo abaixo
    var musicaFavVar = slc_vote.value;
    var idVar = sessionStorage.ID_USUARIO;

    // Variáveis de validação:
    var ipt_vazio = slc_vote.value == 0;


    // Validações:
    // Select vazios
    if (ipt_vazio) {
        cardErro.style.display = "block"
        mensagem_erro.innerHTML = "Selecione uma uma música para votar!";

        finalizarAguardar();
        return false;
    }
    else {
        setInterval(sumirMensagem, 5000)
    }


    // Enviando o valor da nova input
    fetch("/usuarios/cadastrarMusicaFav", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            // crie um atributo que recebe o valor recuperado aqui
            // Agora vá para o arquivo routes/usuario.js
            musicaServer: musicaFavVar,
            idServer: idVar
        })
    }).then(function (resposta) {
        console.log("resposta: ", resposta);

        if (resposta.ok) {
            cardErro.style.display = "block";
            mensagem_erro.innerHTML = "Seu voto foi contabilizado!";

            setTimeout(() => {
                // window.location = "login.html";
                finalizarAguardar();
            }, "2000")

            limparFormulario();
            // finalizarAguardar();
        } 
        else {
            throw ("Houve um erro ao tentar votar!");
        }
    }).catch(function (resposta) {
        console.log(resposta);
        // finalizarAguardar();
    });

    return false;
}


function limparFormulario() {
    slc_vote.value = "0";
}