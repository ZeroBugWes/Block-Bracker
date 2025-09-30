//Primeiro vamos seguir o x dp player
x = objPlayer.x

/*
Com este método, até funciona no inicio, mas para iniciar o jogo,-
- não podemos fazer deste jeito pois não podemos seguir o player -
- para sempre, então temos que verificar se o jogo ainda não iniciou, -
- se não iniciou, vamos seguir o player, se iniciou, vamos para egui-lo
Pasrea afins  de rapidez, vamos usar uma variavel pára isto
Ela vamos cria-lá no create e altera-lá assim que clicarmos para cima
Nós vamos usar if para verificar se o jogo iniciou ou não
Mas, o if só funcionma quamdo a codição/variável é verdadeira
Como nós queremos o contrário disto, ou seja, funcionar quando -
- o jogo não começar e de true para false e vice-versa, quando o jogo iniciare e pararemos de -
- seguir o player
Para inventer um valor de true para false e vice-versa, temos um operador para isto
Vocês sabem dizer qual é? A "!" (em outras linguagens, podemos usar como not)
Então se o jogo não começou, seguimos o player
*/
//Jeito "certo"
if ! isStart{
	//Seguindo o player
	x = objPlayer.x
	//E agora, caso apertemos para cima, a bola deve ser mover e alterar o isStart para true
	if keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space){
		//Vai pra cima
		direcaoVertical = -1
		/*
		Para a direção horizontal, podemos usar a referencia da localização atual da bola, então -
		-  caso a bola esteja mais a esquerda, a bola vai para direita, e se etiver mais a direita -
		- ela irá para esquerda
		para sabermos se ela está mais a equerda ou direita, vamos pegar a largura da sala -
		- e dividir por 2, ou seja, saberemos qual é a metade do tamanho da sala
		Caso o x seja menor que o tamanho da sala, está mais a esquerda ou na direita?
		Na esquerda, e caso om x seja maior mrtade, estara na direita
		*/
		if x < room_width / 2{
			direcaoHorizontal = 1
		}
		else{
			direcaoHorizontal = -1
		}
		//Indique que o jogo foi iniciado com isStart recebendo true
		isStart = true
	}	
	
//No final, some as direções com as suas respectivas variáveis vexes a velocidade
//x soma com a direção horizontal
x += direcaoHorizontal * velocidade

//y soma com a direção vertical
y += direcaoVertical * velocidade