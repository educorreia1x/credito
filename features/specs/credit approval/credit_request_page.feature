#language: pt

Funcionalidade: Pedido de credito

    Contexto: Solicitacao de credito
        Dado que a solicitacao do pedido de credito
        E o sistema solicitar o dados do cliente

    Cenario: Pedido aprovado
        Quando os dados atenderem os requisitos
        E a analise de credito for aprovada
        Entao o credito sera liberado e o cliente avisado

    Cenario: Pedido negado
        Quando os dados forem suficientes
        Mas a analise de credito for negada
        Entao o credito nao sera liberado e o cliente avisado

    Cenario: Dados insuficientes
        Quando os dados nao forem suficientes
        E o sistema solicitar os dados faltantes
        Entao o cliente podera reenviar os dados

    Cenario: Pedido aprovado apos reenvio dos dados
        Dado que o sistema solicitou os dados faltantes
        E que o cliente reenviou a solicitacao
        Quando os dados forem suficientes
        E a analise de credito for aprovada
        Entao o credito sera liberado e o cliente avisado
