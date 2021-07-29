require 'cucumber'
require 'faker'
require 'httparty'
require 'json'
require 'jsonpath'
require 'json-schema'
require 'pry'
require 'report_builder'
require 'rspec'
require 'yaml'
HTTParty::Basement.default_options.update(verify: false)

$project_root = File.expand_path(File.join(File.dirname(__FILE__), '/../..'))

$endpoint = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"

puts "\nGET => #{@endpoint}"

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == 'Before hook'
    return text if text == 'After hook'

    "#{source.last.keyword}#{text}"
  end
end

# Configuração de ambiente para execução dos testes em Ruby.
# Contendo mais endpoints ou cenários, pode ser implementado um arquivo para cada ambiente com rotas dinâmicas por exemplo deixando este apenas para config. de Ruby.