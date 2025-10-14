/*
Explicação dosa alarmes:
os alarmes possuem algumas propiedades
1°:Os alarmes são parecidos com os vetores,ou seja, o primeiro alarme
fica na posi8ção 0, e o uktimo fica na posição de vetores menos ium,
sabendo disso e qu etambem temso 12 vetores, qual é a posição
do ultimo alarme? isso,12

2° ao passra um vbalor(exp:alarm[0] = 10), ele ira
dimin uir em 1 a cada frasme, ois eja, se vocer atribuir por exemplo 10
quer dizer que vai demoea 10,m frames para funcionar

° o alarm, assim quye chega a 0, ira rodar o codigo qure a dentro dela
por exemplo, se voce colocar dentro de um alarm para elçe criar
um inimigo e colocar para ele receber 10, quewr dixaer que a cada 10 franes 
 ele ira criar um novo inimigo
 Então sabenmdso que cada segundo possui 60 frames
 Então é so colocarmos o alarm para receber 60 vezes a quantyidaee bem segundo
 que a cada segundo que vice calcular, eke ira rodar o codigo
 no nosso caso, queremos que assim quie criar uma instancia do objMorte
 queremos que ela seja destruido em 2 segundos
 Sabendo disso, qual sintex usaremis para fazer isto?
*/
//assim tambem funciona,mais toda hora voce tera qyue calcular
//qual é a oputra forma
//alarm[0] = 120

//forma mais simples
alarm[0] = 2* 60
 