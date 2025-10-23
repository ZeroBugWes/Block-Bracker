/*
Nós queremos que toda vex que a vida chegue a zero queremos mostarr a tela 
de morte, para isto usaremos a função Layr_set_visible
Descrição:
function Layer_set_visible(Layer_id: String OR id. Layer, visible: bool)-> Undefined
with this function you can toggle the visibility of a layer.
Layer_id visible
the unique ID value of the layer to target (true) or not (false)

Tradução
Função Layer_set_visible(Layer_id: nome em texto ou id da layer, visible: valor booleano) -> retorno vazio
- ou indefinido
com esta função voce pode trocar a função de um Layer
Layer_id 0 valor unico de um id da layer alvo (ou o nome layer em texto)
visiblequando torna o layer visivel (true) ou não (false)

ou seja,toda vez que a vida chgear a zero,as duas layers vão se totna visiveis
*/

if global.vidas <= 0{
	layer_set_visible("telaMorte", true)
	layer_set_visible("telaMorteFundo", true)
	
	//E agora criaremos uma variavel para im pedir que os outros objetos continuem funcionndo
	//e se a variavel for verdadeiro,colocaremos para sair (Exit) do resto do codigo
	//E vamos colocar codigo em todos os objetos
	global.isFim = true
}
