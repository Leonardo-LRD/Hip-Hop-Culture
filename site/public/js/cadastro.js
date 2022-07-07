function cadastrar() {
    aguardar();

    //Recupere o valor da nova input pelo nome do id
    // Agora vá para o método fetch logo abaixo
    var nomeVar = nome_input.value;
    var emailVar = email_input.value;
    var senhaVar = senha_input.value;
    var confirmacaoSenhaVar = confirmacao_senha_input.value;

    // Variáveis de validação:
    var ipt_vazio = nomeVar == "" || emailVar == "" || senhaVar == "" || confirmacaoSenhaVar == "";
    var nome = Number(nomeVar);
    var num_nome = !isNaN(nome);
    var senha_min = senhaVar.length < 8;
    var valid_email = emailVar.indexOf("@") == -1 || emailVar.indexOf(".com") == -1;
    var conf_senha = senhaVar != confirmacaoSenhaVar;


    // Validações:
    // Campos vazios
    if (ipt_vazio) {
        cardErro.style.display = "block"
        mensagem_erro.innerHTML = "Preencha todos os campos para realizar o cadastro!";

        finalizarAguardar();
        return false;
    }
    else {
        setInterval(sumirMensagem, 5000)
    }

    // Nome numérico
    if (num_nome) {
        cardErro.style.display = "block"
        mensagem_erro.innerHTML = "Nome não pode ser numérico, digite seu nome novamente";

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

    // Campo confirmacaoSenha igual ao de senha
    if (conf_senha) {
        cardErro.style.display = "block"
        mensagem_erro.innerHTML = "As senhas inseridas devem ser iguais para prosseguir!";

        finalizarAguardar();
        return false;
    }
    else {
        setInterval(sumirMensagem, 5000)
    }


    // Enviando o valor da nova input
    fetch("/usuarios/cadastrar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            // crie um atributo que recebe o valor recuperado aqui
            // Agora vá para o arquivo routes/usuario.js
            nomeServer: nomeVar,
            emailServer: emailVar,
            senhaServer: senhaVar
        })
    }).then(function (resposta) {
        console.log("resposta: ", resposta);

        if (resposta.ok) {
            cardErro.style.display = "block";
            mensagem_erro.innerHTML = "Cadastro realizado com sucesso!";

            setTimeout(() => {
                window.location = "login.html";
            }, "2000")

            limparFormulario();
            // finalizarAguardar();
        } 
        else {
            throw ("Houve um erro ao tentar realizar o cadastro!");
        }
    }).catch(function (resposta) {
        console.log(resposta);
        // finalizarAguardar();
    });

    return false;
}


function limparFormulario() {
    nome_input.value = "";
    email_input.value = "";
    senha_input.value = "";
    confirmacao_senha_input.value = "";
}