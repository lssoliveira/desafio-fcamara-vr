# language: pt
@vr_portal
Funcionalidade: Realizar consultas de produtos e estabelecimentos

@vr_busca
# GET https://portal.vr.com.br/api-web/comum/enumerations/VRPAT
Esquema do Cenário: Buscar dados de produtos e estabelecimentos
  Dado que possua um endpoint de busca válido
  Quando executar o GET no serviço
  Então deverá receber a response status '<status>'
     E os dados informativos contidos na chave '<chave>'
  Exemplos:
  | status | chave               |
  | 200    | typeOfEstablishment |

# Fiz em forma de esquema de cenário para se necessário já implementar novos cenários de testes.