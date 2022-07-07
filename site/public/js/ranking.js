let proximaAtualizacao;

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

// function atualizarGrafico(idAquario, dados) {

//     fetch(`/medidas/tempo-real/${idAquario}`, { cache: 'no-store' }).then(function (response) {
//         if (response.ok) {
//             response.json().then(function (novoRegistro) {

//                 console.log(`Dados recebidos: ${JSON.stringify(novoRegistro)}`);
//                 console.log(`Dados atuais do gráfico: ${dados}`);

//                 // tirando e colocando valores no gráfico
//                 dados.labels.shift(); // apagar o primeiro
//                 dados.labels.push(novoRegistro[0].momento_grafico); // incluir um novo momento

//                 dados.datasets[0].data.shift();  // apagar o primeiro de umidade
//                 dados.datasets[0].data.push(novoRegistro[0].umidade); // incluir uma nova medida de umidade

//                 dados.datasets[1].data.shift();  // apagar o primeiro de temperatura
//                 dados.datasets[1].data.push(novoRegistro[0].temperatura); // incluir uma nova medida de temperatura

//                 window.grafico_linha.update();

//                 // Altere aqui o valor em ms se quiser que o gráfico atualize mais rápido ou mais devagar
//                 proximaAtualizacao = setTimeout(() => atualizarGrafico(idAquario, dados), 2000);
//             });
//         } else {
//             console.error('Nenhum dado encontrado ou erro na API');
//             // Altere aqui o valor em ms se quiser que o gráfico atualize mais rápido ou mais devagar
//             proximaAtualizacao = setTimeout(() => atualizarGrafico(idAquario, dados), 2000);
//         }
//     })
//         .catch(function (error) {
//             console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
//         });

// }