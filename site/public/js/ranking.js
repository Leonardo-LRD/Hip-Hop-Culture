let proximaAtualizacao;
// window.onload = obterDadosGrafico(1);
// b_usuario.innerHTML = sessionStorage.NOME_USUARIO;
// verificar_autenticacao();

// function alterarTitulo(idAquario) {
//     var tituloAquario = document.getElementById("tituloAquario")
//     tituloAquario.innerHTML = "Últimas medidas de Temperatura e Umidade do <span style='color: #e6005a'>Aquário " + idAquario + "</span>"
// }

// O gráfico é construído com três funções:
// 1. obterDadosGrafico -> Traz dados do Banco de Dados para montar o gráfico da primeira vez
// 2. plotarGrafico -> Monta o gráfico com os dados trazidos e exibe em tela
// 3. atualizarGrafico -> Atualiza o gráfico, trazendo novamente dados do Banco

// Esta função *obterDadosGrafico* busca os últimos dados inseridos em tabela de medidas.
// para, quando carregar o gráfico da primeira vez, já trazer com vários dados.
// A função *obterDadosGrafico* também invoca a função *plotarGrafico*

//     Se quiser alterar a busca, ajuste as regras de negócio em src/controllers
//     Para ajustar o "select", ajuste o comando sql em src/models

function obterDadosGrafico() {
    // alterarTitulo()

    if (proximaAtualizacao != undefined) {
        clearTimeout(proximaAtualizacao);
    }

    fetch(`/medidas/votes`, { cache: 'no-store' }).then(function (response) {
        if (response.ok) {
            response.json().then(function (resposta) {
                console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);
                resposta.reverse();

                plotarGrafico(resposta);
            });
        } else {
            console.error('Nenhum dado encontrado ou erro na API');
        }
    })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
        });
}

// function obterDadosGrafico(idAquario) {
//     alterarTitulo(idAquario)

//     if (proximaAtualizacao != undefined) {
//         clearTimeout(proximaAtualizacao);
//     }

//     fetch(`/medidas/ultimas/${idAquario}`, { cache: 'no-store' }).then(function (response) {
//         if (response.ok) {
//             response.json().then(function (resposta) {
//                 console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);
//                 resposta.reverse();

//                 plotarGrafico(resposta, idAquario);
//             });
//         } else {
//             console.error('Nenhum dado encontrado ou erro na API');
//         }
//     })
//         .catch(function (error) {
//             console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
//         });
// }

// Esta função *plotarGrafico* usa os dados capturados na função anterior para criar o gráfico
// Configura o gráfico (cores, tipo, etc), materializa-o na página e, 
// A função *plotarGrafico* também invoca a função *atualizarGrafico*
function plotarGrafico(resposta) {
    console.log('iniciando plotagem do gráfico...');

    var dados = {
        labels: [],
        datasets: [
            {
                yAxisID: 'y-vote',
                label: 'Número de Votos',
                borderColor: '#fff',
                backgroundColor: '#000000bd',
                hoverBackgroundColor: '#fff',
                fill: true,
                data: []
            }
        ]
    };

    for (i = 0; i < resposta.length; i++) {
        var registro = resposta[i];
        dados.labels.push(registro.titulo);
        dados.datasets[0].data.push(registro.votos);
        // dados.datasets[1].data.push(registro.temperatura);
    }

    console.log(JSON.stringify(dados));

    var ctx = document.getElementById('canvas_grafico').getContext('2d');

    window.grafico_linha = Chart.Bar(ctx, {
        data: dados,
        options: {
            responsive: true,
            animation: { duration: 500 },
            hoverMode: 'index',
            stacked: false,
            title: {
                display: false,
                text: 'Músicas Favoritas dos Usuários'
            },
            scales: {
                                // x: {
                //     ticks: {
                //         color: '#fff',
                //     }
                // },

                yAxes: [{
                    type: 'linear',
                    display: false,
                    position: 'left',
                    id: 'y-vote',
                    ticks: {
                        beginAtZero: true,
                        stepSize: 1
                    },

                    gridLines: {
                        drawOnChartArea: false,
                    },
                }],
            }
        }
    });

    // setTimeout(() => atualizarGrafico(dados), 2000);
}

// function plotarGrafico(resposta, idAquario) {
//     console.log('iniciando plotagem do gráfico...');

//     var dados = {
//         labels: [],
//         datasets: [
//             {
//                 yAxisID: 'y-umidade',
//                 label: 'Umidade',
//                 borderColor: '#32B9CD',
//                 backgroundColor: '#32b9cd8f',
//                 fill: true,
//                 data: []
//             },
//             {
//                 yAxisID: 'y-temperatura',
//                 label: 'Temperatura',
//                 borderColor: '#FFF',
//                 backgroundColor: '#32b9cd8f',
//                 fill: true,
//                 data: []
//             }
//         ]
//     };

//     for (i = 0; i < resposta.length; i++) {
//         var registro = resposta[i];
//         dados.labels.push(registro.momento_grafico);
//         dados.datasets[0].data.push(registro.umidade);
//         dados.datasets[1].data.push(registro.temperatura);
//     }

//     console.log(JSON.stringify(dados));

//     var ctx = canvas_grafico.getContext('2d');
//     window.grafico_linha = Chart.Line(ctx, {
//         data: dados,
//         options: {
//             responsive: true,
//             animation: { duration: 500 },
//             hoverMode: 'index',
//             stacked: false,
//             title: {
//                 display: false,
//                 text: 'Dados capturados'
//             },
//             scales: {
//                 yAxes: [{
//                     type: 'linear',
//                     display: true,
//                     position: 'left',
//                     id: 'y-temperatura',
//                     ticks: {
//                         beginAtZero: true,
//                         max: 100,
//                         min: 0
//                     }
//                 }, {
//                     type: 'linear',
//                     display: false,
//                     position: 'right',
//                     id: 'y-umidade',
//                     ticks: {
//                         beginAtZero: true,
//                         max: 100,
//                         min: 0
//                     },

//                     gridLines: {
//                         drawOnChartArea: false,
//                     },
//                 }],
//             }
//         }
//     });

//     setTimeout(() => atualizarGrafico(idAquario, dados), 2000);
// }


// Esta função *atualizarGrafico* atualiza o gráfico que foi renderizado na página,
// buscando a última medida inserida em tabela contendo as capturas, 

//     Se quiser alterar a busca, ajuste as regras de negócio em src/controllers
//     Para ajustar o "select", ajuste o comando sql em src/models
function atualizarGrafico(idAquario, dados) {

    fetch(`/medidas/tempo-real/${idAquario}`, { cache: 'no-store' }).then(function (response) {
        if (response.ok) {
            response.json().then(function (novoRegistro) {

                console.log(`Dados recebidos: ${JSON.stringify(novoRegistro)}`);
                console.log(`Dados atuais do gráfico: ${dados}`);

                // tirando e colocando valores no gráfico
                dados.labels.shift(); // apagar o primeiro
                dados.labels.push(novoRegistro[0].momento_grafico); // incluir um novo momento

                dados.datasets[0].data.shift();  // apagar o primeiro de umidade
                dados.datasets[0].data.push(novoRegistro[0].umidade); // incluir uma nova medida de umidade

                dados.datasets[1].data.shift();  // apagar o primeiro de temperatura
                dados.datasets[1].data.push(novoRegistro[0].temperatura); // incluir uma nova medida de temperatura

                window.grafico_linha.update();

                // Altere aqui o valor em ms se quiser que o gráfico atualize mais rápido ou mais devagar
                proximaAtualizacao = setTimeout(() => atualizarGrafico(idAquario, dados), 2000);
            });
        } else {
            console.error('Nenhum dado encontrado ou erro na API');
            // Altere aqui o valor em ms se quiser que o gráfico atualize mais rápido ou mais devagar
            proximaAtualizacao = setTimeout(() => atualizarGrafico(idAquario, dados), 2000);
        }
    })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
        });

}