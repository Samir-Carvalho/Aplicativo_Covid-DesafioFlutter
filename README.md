# desafio_samir Squadra
Desafio App Covid
<div >
<img src="https://user-images.githubusercontent.com/55158042/123838924-e7e9cd80-d8e2-11eb-8dcd-36cd7a770853.jpeg" width="200px" />
  <img src="https://user-images.githubusercontent.com/55158042/123838929-e91afa80-d8e2-11eb-8835-c4529442abf4.jpeg" width="200px " />
  <img src="https://user-images.githubusercontent.com/55158042/123838933-e9b39100-d8e2-11eb-8636-a6efce795cdc.jpeg" width="200px " />
  <img src="https://user-images.githubusercontent.com/55158042/123838936-e9b39100-d8e2-11eb-84f4-d80f92435636.jpeg" width="200px " />
</div>







Descrição:
Crie um  aplicativo em Flutter onde será exibido informações referentes a COVID-19 em todo o mundo (continentes e países).

Protótipo navegável:
https://xd.adobe.com/view/80015f2f-af77-4f9e-b759-200a2c03a1b6-d552

Dica: para baixar as imagens, ver as fontes e cores usadas, ative na barra direita o botão "View specs"
Documentação da API:


https://disease.sh/docs/

Endpoint que lista continentes e seus países:
https://disease.sh/v3/covid-19/continents?yesterday=true

Endpoint que lista os dados de um país específico:
https://disease.sh/v3/covid-19/countries/brazil?strict=true

<<<< D I C A   I M P O R T A N T E >>>>>
Façam o maper somente dos atributos que serão usados.

Funcionalidades esperadas:
● Página inicial para listar todos os continentes (o ícone de cada continente pode ser obtido no protótipo). Ao clicar em um continente, exibir a página de detalhes de um continente.
● Página de detalhes de um continente, com duas abas: Aba Detalhes (com informações comsolidadas do continente) e Aba Países (com lista de países do continente).
● Página de detalhes de um país selecionado, com bandeira (URL da imagem vêm na resposta do serviço) e estatísticas de número de casos totais, ativos, recuperados e óbitos.
  
Informações importantes:
● Entrega do desafio: Publique o desafio no seu GitHub e nos envie o link do repositório público.
● É importante que seu projeto contenha vários commits, demonstrando como foi criado sua aplicação. 

Bônus (não é obrigatório):
● Utilizar algum package para gerenciar estado. ( Provider , valueNotifier)
● Na Aba Países de cada continente, ter um campo de busca que permite filtrar localmente pelo nome do país, só exibindo na lista os países filtrados pelo termo buscado.
