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

//Primeiro, tiramos uma vida
global.vidas--

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
isStart = false