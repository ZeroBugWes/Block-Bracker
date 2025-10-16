/*
Vamo começar criando as variáves de direção e de velocidade da nbola
*/
//Vamos iniciar a variavel velocidade recebendo 3
velocidade = 3 

//E agora vamos definir a direções, ambas iniciando zeradas
direcaoVertical = 0
direcaoHorizontal = 0

/*
E também temos que iniciar com a bola no meio do player, -
- como podemos fazer isso?
sujestões: seguir o player, mas como? -
- pegando a posição do player
Então o x da bola, tem que ser o x do player para ficar no meio do player
Lembrando que ao usar "." você está se referindo a uma propiedades/função -
- da variavel/objetivo, no nosso caso, usaremos as propiedades do objPlayer
E o y da bola deve ser apenas alguns pixels acima do y do player
*/

//Aqui esta o motivo da bola iniciar lá embaixo com o player, ou seja, ou
//Começamos um novo objeto para indentificar que é uma bola criado pelo bloco
//Ou adaptamos o objeto para funcionar tanto no 

//Certo escolhemos a adapitação,entao iniciamos tirando
//Quando for criado
//x = objPlayer.x
//y = objPlayer.y - 10
/*
Só que tem um problema, sabem qual? Toda vez que a bolinha for criada -
- Ela vai aparecer no meio do player, afinal, temos blocos que geram bolas, ou seja, -
- teremos que criar um jeito de verificar se é o inicio do jogo
Sujestões:
Quando a bola está na plataforma, ok, mas estamos resolvendo exatamente isso
Pelos pontos, ok, mas e quando o player perde uma vida, não nescessariamente -
- perde pontos, apesar de iniciar no centro da barra, então não podemos -
- usar este método
Podemos criar um objetivo separado para bolas que provem de blocos, ok-
Podemos usar este método (existem outras maneiras, mas vamos usar esta)
Apesar da bola iniciar no certo, ela não segue o player, para seguir
Teremos que usar uma outra função no step
*/
//isStart = false // Futuramente, esta deve ser uma variavel global

/*
Lembra que futuramente fariamos a vari9avel sendop global
E por isso vam,os indetificar se o jogo inicio ou não
e ele vao começar na iniuciado, e depois ir pra coima do player
e quando nao estiver, vai iniciar com uma direção aleatoria

Não es=queça de verificar a variavel global jã existe
se ela não exciste, cria variavel
*/

if ! variable_global_exists("isStart"){
	global.isStart = false
	x = objPlayer.x
	y = objPlayer.y
}
else{
	
	//caso exista,iremos aleatorizar para aonde a bola vai
	direcaoHorizontal = irandom_range(1,1)
	direcaoVertical = irandom_range(0,1)
	
	//O problema, que o 0 pode ser selecionado aqui
	//Então teremos que trocar o valor caso seja 0
	
	//voces da prioridade da bola irm para direita ounparea a esquierda
	if direcaoHorizontal == 0{
		direcaoHorizontal = 1
	}

	if direcaoVertical == 0{
		direcaoVertical = -1
	}
}

//processo de criação de quantidades de bolas
if ! variable_global_exists("quantbolas"){
	global.quantbolas = 1
}
else{
	global.quantbolas++
}