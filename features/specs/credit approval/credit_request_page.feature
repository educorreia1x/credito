#language: pt

Funcionalidade: Pedido de credito

    Contexto: Pagina de pedido
        Dado que o usuario acessa a pagina de pedido de credito
        
    Cenario: Envio com sucesso pessoa fisica
        Quando o usuario entrar com os dados
            | nome      | cpf            | endereco residencial | telefone       | email             | valor desejado |
            | "Eduardo" | 123.456.789-10 | "Rua teste, 123"     | (11) 2123-4589 | "teste@teste.com" | "R$ 1.800,00"  |
        Entao o sistema deve exibir uma mensagem "Obrigado, iremos avaliar sua solicitacao em até 48hs, aguarde nosso retorno atraves de seu e-mail!"

    Cenario: Envio com sucesso pessoa juridica
        Quando o usuario entrar com os dados
            | nome      | cnpj               | nome da empresa | endereco empresarial     | telefone comercial | email               | valor desejado |
            | "Eduardo" | 12.345.678/9101-12 | C$C Finances    | "Rua Teste 123 - Sala A" | (11) 2123-4589     | "teste@empresa.com" | "R$ 10.800,00" |
        Entao o sistema deve exibir uma mensagem "Obrigado, iremos avaliar sua solicitacao em até 48hs, aguarde nosso retorno atraves de seu e-mail!"

    Cenario: Cpf invalido
        Quando o usuario entrar com o cpf "000.000.000-00"
        Entao o sistema deve exibir uma mensagem de alerta "Digite um CPF valido"

    Cenario: Cnpj invalido
        Quando o usuario entrar com o cnpj "00.000.000/0000-00"
        Entao o sistema deve exibir uma mensagem de alerta "Digite um CNPJ valido"

    Cenario: Telefone residencial invalido
        Quando o usuario entrar com o telefone "(00) 0000-0000"
        Entao o sistema deve exibir uma mensagem de alerta "Digite um telefone valido"

    Cenario: Telefone comercial invalido
        Quando o usuario entrar com o telefone "(00) 0000-0000"
        Entao o sistema deve exibir uma mensagem de alerta "Digite um telefone valido"

    Cenario: E-mail invalido
        Quando o usuario entrar com o e-mail "!@.com"
        Entao o sistema deve exibir uma mensagem de alerta "Digite um e-mail valido"

    Cenario: Nome invalido
        Quando o usuario entrar com o nome "!@54654^&"
        Entao o sistema deve exibir uma mensagem de alerta "Digite um nome valido"
    
    


