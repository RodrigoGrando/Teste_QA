#language:pt

Funcionalidade: Valida endereço
    Valida se o endereço é válido através do CEP

    Cenario: [BDD1][AV] Fazer busca com CEP válido

        Dado que o endereço é "01001-000", "Sé", "São Paulo", "SP"
        Quando eu consulto o CEP na API
        Então o retorno da API deve ser igual ao endereço informado

    Cenario: [BDD2][AI] Fazer busca com CEP inválido

        Dado que o endereço é "11111-111", "Sé", "São Paulo", "SP"
        Quando eu consulto o CEP na API
        Então o retorno da API deve ser erro = true