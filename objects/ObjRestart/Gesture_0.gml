/*
Toda vezqueclicarmos no objeto restart ele reniciara o jogo
e fara a tela de morte sumir
*/
layer_set_visible("telaMorte", false)
layer_set_visible("telaMorteFundo", false)
 global.isFim = false
 
 
 //assim que resetamose outras variaceis globais não são
 //rewsetadas juntas isso acontece pois a existencia das variaveis globais não são
 //apagadas e la no jogo aonde checamos a existencia funcionam com elas existentes para resolver
 //isto preccisamos resetar manualmente a existencia delas
 
 //resetando o blocop na altura certa e demais variaveis
 global.blocoAlturaCerta = false
 
 //O jogo não começou
 global.isStart = false
 //Nao ganhou nenhum ponto
global.pontos = 0
//Não ha nenhum bloco criado
global.quantBlocos = 0
//não há bolas criadas
global.quantBolas = 0
//O "id" do objVida começa zerado
global.quantvidas = 0
 global.vidas = 3
 room_restart()