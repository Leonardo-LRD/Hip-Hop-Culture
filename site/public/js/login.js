function entrar() {
    aguardar();

    var emailVar = email_input.value;
    var senhaVar = senha_input.value;

    // Variáveis de validação:
    var ipt_vazio = emailVar == "" || senhaVar == "";
    var senha_min = senhaVar.length < 8;
    var valid_email = emailVar.indexOf("@") == -1 || emailVar.indexOf(".com") == -1;


    // Validações: 
    // Campos vazios
    if (ipt_vazio) {
        cardErro.style.display = "block"
        mensagem_erro.innerHTML = "Preencha os campos para realizar o login!";

        finalizarAguardar();
        return false;
    }
    else {
        setInterval(sumirMensagem, 5000)
    }

    // Senha com 8 caracteres
    if (senha_min) {
        cardErro.style.display = "block"
        mensagem_erro.innerHTML = "Senha deve conter no mínimo 8 caracteres";

        finalizarAguardar();
        return false;
    }
    else {
        setInterval(sumirMensagem, 5000)
    }

    // Email com @ e .com
    if (valid_email) {
        cardErro.style.display = "block"
        mensagem_erro.innerHTML = "E-mail inválido! Verifique e tente novamente.";

        finalizarAguardar();
        return false;
    }
    else {
        setInterval(sumirMensagem, 5000)
    }


    console.log("FORM LOGIN: ", emailVar);
    console.log("FORM SENHA: ", senhaVar);

    fetch("/usuarios/autenticar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            emailServer: emailVar,
            senhaServer: senhaVar
        })
    }).then(function (resposta) {
        console.log("ESTOU NO THEN DO entrar()!")

        if (resposta.ok) {
            console.log(resposta);

            resposta.json().then(json => {
                console.log(json);
                console.log(JSON.stringify(json));

                sessionStorage.EMAIL_USUARIO = json.email;
                sessionStorage.NOME_USUARIO = json.nome;
                sessionStorage.ID_USUARIO = json.id_usuario;

                setTimeout(function () {
                    window.location = "favorita.html";
                }, 2000); // apenas para exibir o loading

                limparFormulario();
            });
        } 
        else {
            console.log("Houve um erro ao tentar realizar o login!");

            resposta.text().then(texto => {
                console.error(texto);
                finalizarAguardar(texto);
            });
        }
    }).catch(function (erro) {
        console.log(erro);
    })

    return false;
}


function limparFormulario() {
    email_input.value = "";
    senha_input.value = "";
}