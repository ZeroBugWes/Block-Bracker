//Primeiro vamos seguir o x dp player
//x = objPlayer.x

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
}
//Se o jogo já começou
else{
	/*
	Primeiro vamos fazer as interações com o objColisao
	Para isto usaremos a função place_meeting()
	Descrição:
	function place_meeting(x: Real, y: Real, obj: Id. TilemapElement OR Asset.GMObject OR -
	- Id. Instance OR Conjstant.ALL OR Array) -> Bool
	With this function you can check a position for a collision with another instance or -
	- all instance of an object using the collision mask of the instances that runs the code -
	= for the check.
	X the position to check.
	the y position th check
	obj the istnce or object to check for.
	
	Tradução:
	Função place_meeting(x: valor real, y: valor real, obj: ID. Elemento do tile map ou imagem do asset-
	- oi ID. dca instancia ou constante. todos osobjetivos ou um vetor deles deles) retorno de valor booleano -
	- (true or false)
	Com esta função , você consegue checar uma pos9ção para um colisão com outra instancia ("ser") ou todas -
	- as instancias de um objeto("tipo"), usa a mascara da instanciapara iniciar o codigo para checar
	X a posição do x para checar
	y a posição do y para checa
	obj A instancia("ser") ou objetivo("tipo") que queira checar
	
	Ou seja, com esta função podemos verificar se havera uma colisão em um lugar especifico
	nonosso casousaremos para determinar para qual a direção o objetivo deve ir 
	*/
	
	//Primeiro, vamos configurar as laterais
	//Ou seja, a esquerda a dirita
	//Colisão na esquerda
	//**Usaremos o objetivo colisão para testar as colisões mais facilmente
	if place_meeting(x - velocidade, y, ObjColisao){
		direcaoHorizontal = 1
	}
	
	//Colisão direita
	if place_meeting(x + velocidade, y , ObjColisao){
		direcaoHorizontal = -1
	}
	
	//Colisão encima
	if place_meeting(x , y - velocidade,ObjColisao){
		direcaoVertical = 1
	}
 //Agora iremos a interação com o player
 if place_meeting(x - velocidade, y, objPlayer){
		direcaoVertical = -1
 }
 
 //Agora vamos começar as vcolisoes do bloco
 //Primeiro vgamos checar a direção de onde o correrá a colisoa 
 //Para isso usamos a função Place_meeting()
 //Caso ocorra na esquerda
 
  /*
	 mas não destruir o bloco que a bolo colidiu apenas usando o instance_destroy(ObjBlocos
	 Por que não podemos usar?e se olharmos a descrição da função
	 Descrição:
	 function intance_destroy([id^: Asset.GMObject OR id. Instance OR Constant.ALL], -
	 - [execute_event_flag: Bool]) -> Undefined
	 You call this function whenever you wish to destroy an instance, normally trieggering -
	 - a destroy Event and also a Clean Up event.
	 id the instance ID or object_index to destroy (optional, default is 5thes calling instance) -
	 execute_event_Flag set to trueor false tom perform the destroy event or not-
	 - (optional, default ir true)
	 
	 Tradução
	 Função instance_destroy([id: Asset Objeto ou id. da instancia ou costant. Todas as instancia], -
	 - [execute_evente_Flag: valor booleano]) retorno indefinido ou cvazio
	 Você chuama esta função quando voce dejea destruir uma nstacia,normalmente ocasiona no evento -
	 - de destruição e tambem no egvento de limpeza
	 id a indentificação da instancia ou o index do objeto (opcional,por que o padrão é deletar a instancia-
	 - que chamou a função)
	 executre_event-Flag Verdadeireo ou falso para permitir o evento de destruição ou não(opcional pois o
	 - padrao é true)
	 
	 Então,caso coloquemos para derstruir o ObjBlocos,ele destruira todas a intancia daqueles bloco lá
	 Para resolver isto, podemos fazer de 2 jeitos
	 o primeiro, é adicionar ao ObjBlocos, o evento de colisao co o ObjBola,e destruir o bloco lá
	 A segunda e destrui a instancia recembo o id dela quano colidirmo com uma
	 Qual,querem usar? Eu particulamente,prefiro pela segunda opção.
	 segundo ganhou
	 Ok, com segundo metodo,usaremos a função Place_meeting()
	 Descrição da função:
	 function instance_place(x: Real, y obj: id. TileMapElement OR Asset.GMOobject -
	 - OR Constant.All OR Array) ->. Instance
	 With this function you can check position for a collisionwith anitheristance or -
	 - all instanceoof an object
	 using the collision mask of the instance that runs the code for the check.
	 X the x position to check for instyance.
	 y the y position check for instance.
	 obj the object to check fot instance of.
	 
	 Tradução:
	 Função instance_place(x: valor real, y: valor Real, obj? id do tilemap,ou asset. Obejeto, ou Constante. -
	 - Todos os objetos ou um vetor de objetos) retorno id da instancia
	 Com esta função, voc~e consegue checar se uma posição para uma colisão com outra instancia ou-
	 - todas as instancias de um obejeto
	 usa a mascara de colisão de uma instancia desta cmpilação codigo para checar
	 - todas as instancia de um objeto
	 Usa a mascara de colisão de uma instancia desta compilaçaão de codigo para checar
	X a posição do X para checar a instancia
	y a posição do Y para checar a instancia
	obj O objeto para checar a instancia
	
	ou seja, iremos primeiro checar se ouve colisão, se houvere, iremos pegar o id da instancia
	e depois destuila
	*/
	//Colição na esquerda
 if place_meeting(x - velocidade, y, objBlocos){
	//Agora criamos uma variavel do bloco qua a boinha acertou e destroi ele
	blocoAcertado = instance_place(x - velocidade, y, ObjBloco)
		//Agora destruimo
		instance_destroy(BlocoAcertyado)
		//como acertamos na esquerda, agora iremos para direita
		direcaoHorizontal = 1
 }		
		//Colição na direita
 if place_meeting(x - velocidade, y, objBlocos){
	//Agora criamos uma variavel do bloco qua a boinha acertou e destroi ele
	blocoAcertado = instance_place(x + velocidade, y, ObjBloco)
		//Agora destruimo
		instance_destroy(BlocoAcertyado)
		//como acertamos na , agora iremos para direita
		direcaoHorizontal = -1
 }
		//Colição na direita
 if place_meeting(x, velocidade, objBlocos){
	//Agora criamos uma variavel do bloco qua a boinha acertou e destroi ele
	blocoAcertado = instance_place(x + velocidade, y, ObjBloco)
		//Agora destruimo
		instance_destroy(BlocoAcertyado)
		//como acertamos na direita, agora iremos para esquerda
		direcaoHorizontal = -1
	}		
	
	//Colição em cima 
 if place_meeting(x, y - velocidade, objBlocos){
	//Agora criamos uma variavel do bloco qua a boinha acertou e destroi ele
	blocoAcertado = instance_place(x + velocidade, y, ObjBloco)
		//Agora destruimo
		instance_destroy(BlocoAcertyado)
		//como acertamos em cima. agora iremos para baixo
		direcaoHorizontal = 1
	}		
		
		//Colição em cima 
 if place_meeting(x, y + velocidade, ObjBlocos){
	//Agora criamos uma variavel do bloco qua a boinha acertou e destroi ele
	blocoAcertado = instance_place(x, y + velocidade,  ObjBloco)
		//Agora destruimo
		instance_destroy(BlocoAcertyado)
		//como acertamos em baixo. agora iremos para cima
		direcaoHorizontal = -1
	}		
		
		
//No final, some as direções com uas respectivas variaveis vezes a velocidade
//X some com a direção horizontral
x += direcaoHorizontal * velocidade

//y soma com a direção vetical
y += direcaoVertical * velocidade