//Ao destruir o bloco ele ira somar os pontos ao pontos
global.pontos+= 10

/*
Nos ja somamos mais ainda nao mostramops a quantidade de pontos na tela 
para mostrar iremos criar objpontos
*/

/*
Quandso o objeto for destruido, iremos checar qual é o tipo dele

Caso o tipo seja 15,quer dizer que é um bloco com uma bola dentro
Então quando for destruido e tiopo dele for 15 iremos criarv uma bol no lugar
*/

if tipoBloco == 15{
	instance_create_layer(x, y,"instances", objBola)
}
	