/*
por enquanto nao imporata usarmos draw ou o draw gui, pois no
nosso jogo nao pussi camera

agora para mostrar os pontois vamos usar   uma função e aproveitaremos e aprenderemos
 sobre paronização de nomes de função como ela funmcina no game maker
 
 quando form,os criar uma funçaõ a uma certo padrão a ser segyuido, este paDRÃO
 PRIMEIRA PALAVRA SENDOM UM verbo, e depois a segundo palçavra estando
 com a prmeira letra minuscula, e complemento verbo
 por exemplo:
 se eu fosse criar uma função para criar blocos eu criaria quebrarblocos()
 se reu quiser checar a colisão entre dois objetos seria o chcarcolisão()
 se eu quiser inicia o jogo ou seja lançar a bola usaria lançarBola()
 se eu quiser reverter a colisão da bola eu criaria o redirecionarbola()
 
 no Game Maker as funçoes são parecidas, a diferença é que s´~ao em ingles
 Então, por exemplo nósw quermos mostrar o texto na tela, podemos dezer queremos
 desenha um texto na tela, agora, é so separar chaves desta palavrfa
 quais são elas: desenhar um texto
 Agora é so traduzir as duas palavras em ingles
 desemhar:Draw
 texto:text
 ou seja, muito provavelmente existe uma funçãop com este nome
 Então, mesmonão sabendo o nome da função com este nome
 pelo menos não sabndio o nome da fun ção vocr pode tentar achar ela 
  oelo nome em ingles ou usanbdio o nome do que voce fazer referencia 
  por exemplo muitas para não dizer todas as funçoes relacionadas a fase
  vão estar com "room" em seu nome, relacionando ao conteudo do texto, vai estar
  com"text" em seu nome
  ****** outra ´pradonização é quando voce quiser alterar um valor
		a função tera 7 no nome e quando voce quiser rexceber i valor
		provavelmente tera get ou is no nome 
	Entao vamos ver a descrição do draw_text():
	function draw_text(x: real, y:Real, string: any) ->
	Undefild
	With this functionm you can draw any string at any position whithin room
	(for drawing realnumbers you shold use the string() fuction to convert
	them intos text).
	x the x cooordinate of the draw string.
	y the y coordinate of the draw string.
	string the string to draw.
	Tradsução:
	Função draw_text(x: valor real, y: valor real , string: qualquer) retorno vazio ou
	indefinido
	com esta função você pode desenhar qualquer txto e em qualquer posição na sala
	(para desenhar o valor real vcoce dver de usar a função string() para converter o
	em texto)
	X A coordenada x do texto
	y A
	
	*/
	if global.pontos < 10{
		mensagem = "0000" + string(global.pontos)
	} 
	else if global.pontos < 100{
		mensagem = "000" + string(global.pontos)
	} 
	else if global.pontos < 1000{
		mensagem = "00" + string(global.pontos)
	}
	else if global.pontos < 10000{
		mensagem = "0" + string(global.pontos)
	}
	else{
		mensagem = string(global.pontos)
	}

	//mensagem = string(global.pontos)
	draw_set_font(fntPontos)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)

	draw_set_color(c_red)
	draw_text(room_width / 2 ,y,mensagem)

 /*