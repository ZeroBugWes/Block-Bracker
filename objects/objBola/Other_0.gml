/*
Este evento é gerado toda vez qua a instancia sai da tela
No nosso, quando uma instancia do objBola sai da tela
E como ela só pode sair por baixo, temos certeza que o player perdeu
a bolinha, consequentemente uma ds vidas

Então, vamos configurar 4 coisas
1º Diminuir a vida em 1
2º Fazer a animação de morte aonde a bolinha saiu
3º Apagar do código a bolinha que saiu(para evitar lags)
4º Criar uma nova bolinha caso ainda tenha vida
*/

//vamos mexer alguns componentes do lugar,que ueremos por enquanto
//é, diminuir a quantidade de bolas recriar p pbjmortes e destrui a bola
//que saiu, sendo a condição, se aquantidade de bola e igua
//Primeiro, tiramos uma vida

//AGORA,CASO A QUANTIDADE DE OLAS SEJA MAIOR QUE 0 IREMOS APENAS
//FAZER ANIMÇÃO

//e caso a quantidade seja maior que zero,nao faremos nada
global.quantbolas--
instance_destroy()
instance_create_layer(x,  room_height, "instances", ObjMorte)

if global.quantbolas > 0{
	exit
}

global.vidas--
global.isStart = false


//AGORA,CASO A QUANTIDADE DE OLAS SEJA MAIOR QUE 0 IREMOS APENAS
//FAZER ANIMÇÃO

//e caso a quantidade seja maior que zero,nao faremos nada


//Segundo, criar uma animação de morte
//Só que, para isto, criaremos um novo objeto chamado objMorte
//E aprendermos como criar novas instancias dentro do código

/*
Tradução:
função instance_create_layer(
x: valor real,
y: valor real,
layer_id:valor stryng OR Id. layer,
obj: objeto do sistema,
[var_struct: instruçoes]
) retorno do Id da nova Instancia
com esta função, voce consegue criar uma nova instancia dop objeto especifico
- em qualquer lugar da sala dando pontos de referencia em um layer especifico
X A posição de x de onde om objeto vai ser criado
Y A posição de y de unde um obejeto vai ser criado
layer_id o ID da layer(ou nome) ara criar instancia
obj O index do objeto instancia que voce deseja criar
var_struct uma estrutura onde contem as variaveis serão copiadas
- dentro da novainstancia antes do evento de criação

basicamentes, toda vez que quisermos criar uma instancia, usaremos esta função
por exemplo, quando a bolinha sair, vamos criar a instancia do objMorte
Onde a bolinha saiu
*/
instance_create_layer(x, room_height, "Instances", ObjMorte)
/*
Agora que testamos que funcionou, temos que apagar a explosão pois de um tempo

Para criar algo depois de um tempo,iremos usaro evento de alarm
A explicação estará no evento de criação do objMorte

como deu certo ,entãop o segumdo passo esta completo
*/

/*
Agora vamops fazer o 3 passo:destroi a bolinha quando sair
isto ja sabemos,basta usar instance_destroy()
*/

instance_destroy()

/*
E o ultimo passo, recriar a bolinha encima do player
*/

instance_create_layer(objPlayer.x, objPlayer.y - 10, "Instances", objBola)
global.isStart = false

/*
percebemos que quando qualquer bolinha conta como uma vida a meno
mesmo ainda tendo uma bolinha ou mais na tela sobrando
entao voces se lembram do break?
para quem não lembra, o break sai do laço de repetição quando parecia
por exemplo, quando um numero fosse divisivel por i, elr sai do laço de repetição
independente do que acontecey antes, agorak nos iremos usar algo parecido
que no caso é exit
o exit sai do codigo do evnto assim que é chamado
No nosso caso, iremos criar o contadoe de bolinhas e, assim que a ultima
bolinha sair, ai sim mexeremos na vida