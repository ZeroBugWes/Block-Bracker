if global.isFim{
	exit
}
/*
aqui, toda vez que a quantidade de blocos chegar a zero. começaremos a criar os blocos
como criaremos mais de um teremos que usar um laço de repetição

lembrandom que laço de repetição executam uma tarefa até comprir uma certa condição ou descumprila
no nosso caso usaremos o while que funciona enqwuanto a cvodição dentro dele é verdadeira

No nosso caso,usaremos dois laços um pra cada linha e dentro do laços da linha um para cada coluna 
e as nossas condiçoees vao ser enquanto noissa variavel de cinta for maios quer a nossa variavel de blocos 
criaremos um novo bloco
E depois que tivermos certeza que tudo sera criado corretamente faremos eles entrartesm descendo da tela
*/

//Então criamos a variavel de linhas

if global.quantBlocos == 0{
	global.blocoAlturaCerta = false
	//agora faremos para ele criar em blocos 
	//para isto criaremos outros laços e colocar o anteruior dentro dele
	
	i = 0
	
	while i < linhas{
		j = 1
	
		while j < colunas{
	
		//Criar uma isntancia do objBloco, oque faremos de diferença é que criaremos a posição
		// horizontal a partir da mutiplicação do j
		//por que faremos isso ?
		//pois assim, a cada inicialização do laço, o bloco se moivera para depois do ulyimo bloco
		//no nosso mcas0op, mutiplicaremos por 64 poor j
		//entao o primeiro bloco iniiara no x 0,o segundo no 64, o terceiro x no 128, e assim por diante
		//;mas perceberemos o erro aqui?isto, ao criar o primeiro iniciara no x 0, estamos aguardandoi
		//para corrigir isto,m iniciaremops o j no 1,assim o prmeiro bloco iniciara noi 64
		//O segundo em 28, o terceiro em 192 e assim por diante
	
		//depois faremos a pate do y
	
		//usaremos a função instance_create_layer()
		
	//A altura do bloco vai ser -64 mutiplicado pelo i, ou seja, o primeiro bloco começa
	//O segundo na altura - 64, o tericeiro na altura -128, e assim por diante
	//aqui não tem problema de começar afora da tela, pois no jogo os blocos aparecem descendo assim que acaba o jogo
	//por isto iremos criar os blocos fora da tela, e depois mandsar descer, manda descer
	//Na altura
	
	//por causa do tamanhp do bloco irei mutiplicar por -40
		instance_create_layer(64 * j, -40 * i, "Instances", objBloco)
	
		//No final de cada laço, aumentaremoa o valor de j em 1
		j++
		

	
		//aumenta a quantidade de blocos
		}
		
		//Aumentar o valor de i
		i++
	}
}