def validarResultado(cep, bairro, cidade, uf, erro)
    if cep != nil
        expect(cep).to eql @endereco[0]
        expect(bairro).to eql @endereco[1]
        expect(cidade).to eql @endereco[2]
        expect(uf).to eql @endereco[3]
        log("Código IBGE: #{@resultado["ibge"]}")

    elsif erro != nil
        expect(erro).to eql true 
    end

end

Dado('que o endereço é {string}, {string}, {string}, {string}') do |cep, bairro, cidade, uf|
@endereco = [cep, bairro, cidade, uf]                       
end                                                                                                   
                                                                                                        
Quando('eu consulto o CEP na API') do                                                               
    @resultado = (Busca_cep.buscarCep(@endereco[0])).to_hash()                  
end                                                                                                   
                                                                                                        
Então('o retorno da API deve ser igual ao endereço informado') do                                     
    validarResultado(@resultado["cep"], @resultado["bairro"], @resultado["localidade"], @resultado["uf"], @resultado["erro"])                   
end                                                                                                   
                                                                                                        
Então('o retorno da API deve ser erro = true') do                                       
    validarResultado(@resultado["cep"], @resultado["bairro"], @resultado["localidade"], @resultado["uf"], @resultado["erro"])                     
end                                                                                                   