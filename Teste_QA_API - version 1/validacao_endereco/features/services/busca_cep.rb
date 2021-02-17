class Busca_cep
    include HTTParty
    base_uri "https://viacep.com.br/ws"
    headers "Content-type" => "application/json"

    def self.buscarCep(cep)     
        get("/#{cep}/json/")        
    end

end