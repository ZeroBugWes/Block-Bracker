//Criar a variavel de velocidade
velocidade = 3

/*Agora queremos criar as vidas
para criar uma variavel global, usamos global.(Nome da variavel)
seria global.vida = 3
Só que tem um problçe,a 
Toda vez que criamos o player, ele também vai resetar as vidas
pois, quando o inal de igual está sozinho, ou seja "=", ele substitui
Vamos supor que a vidfa atual é 1, ou seja, global.vida == 1
Se substituirmos, ficará global.vidas == 3
Então, ante dxe criarmos a variavel, vamos verificar se ela existe.
Então usaremos a função varable_global_exists()
Esta função checa se existe ou não é variavel,
Se ela existir, ela retorna true
Se ela não existir, ela retorna false
O que nós queremos é verificar se ela existe
Ou seja, queremos apenas quando não exista, iremos inicia-lá