Dado("que possua um endpoint de busca válido") do                                            
    $endpoint
    # endpoint da API, está sendo importado do arquivo env.rb.
end                                                                                          
                                                                                               
Quando("executar o GET no serviço") do                                                   
    @result_get = HTTParty.get(
        "#{$endpoint}"
    )
=begin  
    requisição HTTParty chamando o endpoint.
    Caso tivessemos por exemplos filtros no endpoint ou até mesmo fosse uma rota variável poderia ser implementada apenas a base da rota, deixando o restante dinânico para alteração
    ex: https://portal.vr.com.br/@ROTA1/@ROTA2/@ROTA3/@ROTA4... etc... Porém como era apenas uma rota deixei o mais dinâmico possível.
    E também, contendo mais microservisos a serem automatizados poderia ser implementada um arquivo api.rest.rb para automatizar todas as requisições em um unico step.
=end
end                                                                                          
                                                                                               
Então("deverá receber a response status {string}") do |status|
    expect(@result_get.response.code).to eql status
    expect(@utils.validate_schema(status, @result_get)).to be true
=begin  
    Validação de status de retorno da requisição; 
    Validação de não apenas o campo 'typeOfEstablishment' como também de todo o Json retornado.
        Podendo ser obervado no arquivo 200.schema
        Ou seja, assim validamos todo o contrato para não ocorrer nenhuma quebra.
=end
end                                                                                          
                                                                                               
E("os dados informativos contidos na chave {string}") do |chave|
    @chave = chave
    puts @utils.show_response_partial("randon '#{@chave}'", @result_get['typeOfEstablishment'][rand(@result_get['typeOfEstablishment'].length)].to_hash)
    # Retorno de um estabelecimento de maneira aleatória no relatorio de testes que fica disponível da pasta dos reports.
end                                                                                          

# Metodos de validações e retornos se encontram no arquivo utils.rb