#language: pt

Funcionalidade: Aprovacao de credito

    Contexto: Pedido de aumento de limite
        Dado que o usuario ja tenha enviado o pedido

    Cenario: Credito aprovado
        Quando os dados recebidos atende requisitos para aumento de limite
        Entao o sistema deve enviar um e-mail com a mensagem "Parabens, seu limite foi aprovado"

    Cenario: Credito recusado
        Quando os dados recebidos nao atende requisitos para aumento de limite
        Entao o sistema deve enviar um e-mail com a mensagem "Infelizmente seu limite nao foi aprovado pela equipe de analise, tente novamente no periodo de 60 dias! Obrigado."