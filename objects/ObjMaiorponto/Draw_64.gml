
//caso os ponytos sejam maior doque os atuais,recebendo estes pontos

if global.maiorPonto < global.pontos{
	global.maiorPonto = global.pontos
}	
	
	
if global.maiorPonto < 10{
		pontosMensagem = "0000" + string(global.maiorPonto)
	} 
	else if global.maiorPonto < 100{
		pontosMensagem = "000" + string(global.maiorPonto)
	} 
	else if global.maiorPonto < 1000{
		pontosMensagem = "00" + string(global.maiorPonto)
	}
	else if global.maiorPonto < 10000{
		pontosMensagem = "0" + string(global.maiorPonto)
	}
	else{
		pontosMensagem = string(global.maiorPonto)
	}

	
	draw_set_font(fntPontos)
	mensagem ="Maiorpontos: " + pontosMensagem 
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_text(x,y,mensagem)

 