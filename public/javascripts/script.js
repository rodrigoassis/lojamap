// JavaScript Document
$(document).ready(function(){
	topLogin();
	hoverNovidades();
	setaNovidades();
	vitrineSlide();
	colecaoHover();
	setaColecao();
	clipping();
});
/********************** LOGIN - TOPO  ********************/
function topLogin(){
	var memo = 0;
	var holder_sacola = $('#holderSacola');
	var holder_login = $('#holderLogin');
	$('#botaoSacola').click(function(){
		if(memo===0){
		holder_sacola.css('z-index','1000').show('slide',{'direction':'up'},400);
		$(this).animate({
			'margin-top':holder_sacola.height()
		});
		memo=2;
		}else if(memo===1){
		holder_login.hide();
		holder_sacola.show();
		memo=2;
		}else if(memo===2){
		holder_sacola.hide('slide',{'direction':'up'},200);
		$(this).animate({
			'margin-top':0
		},200);
		memo=0;	
		}
		return false;
	});
	$('#botaoLogin').click(function(){
		if(memo===0){
			holder_login.css('z-index','1000').show('slide',{'direction':'up'},400);	
			$(this).animate({
				'margin-top': holder_login.height()
			});
			memo=1;
		}else if(memo===1){
			holder_login.hide('slide',{'direction':'up'},200);
			$(this).animate({
				'margin-top':0
			},200);
			memo=0;
		}else if(memo===2){
			holder_sacola.hide();
			holder_login.show();
			memo=1;
		}
		return false;
	});	
	return false;
}
/************************ NOVIDADES  **************************/
function hoverNovidades(){
	$('#holderNovidades').width( $('#holderNovidades').children('.item').size()*291);
	$('#holderNovidades').children('.item').bind({
		mouseenter: function(){
		$(this).children('.imagemNovidades').stop(true,true).fadeOut(200);
		return false;	
		},
		mouseleave: function(){
		$(this).children('.imagemNovidades').stop(true,true).fadeIn(400);	
		return false;	
		}
	});
}
function setaNovidades(){
	var itemNovidades = $('#holderNovidades').children('.item');
	var quantidade = itemNovidades.size();
	var cliques = 0;
	$('#setaEsquerda').click(function(){
		if(cliques+1<(quantidade-2)){
		  itemNovidades.eq(cliques+3).css({'opacity':'0'});
		  itemNovidades.eq(cliques).stop(true,true).fadeTo(300,0.0);
		  itemNovidades.eq(cliques+3).stop(true,true).fadeTo(800,1);
		  $('#holderNovidades').stop(true,true).animate({
			  'margin-left':-291*(cliques+1)
		  },600,'swing');
		  cliques++;
		}
	});
	$('#setaDireita').click(function(){
		if(cliques>0){
		  cliques--;
		  itemNovidades.eq(cliques+3).stop(true,true).fadeTo(300,0.0);
		  itemNovidades.eq(cliques).stop(true,true).fadeTo(800,1);
		  $('#holderNovidades').stop(true,true).animate({
			  'margin-left':-291*cliques
		  });
		}		
	});
}
/********************** VITRINE *********************/
function vitrineSlide(){
	var itemImagem = $('#imagemPrincipal').children('.image');
	var itemQtd = itemImagem.size();
	var zIndex = itemQtd-1;
	for(var altera=0;altera<itemQtd;altera++){
		itemImagem.eq(altera).css('z-index',zIndex);	
		zIndex--;
	}
	var itemAtual = 0
	if(itemQtd>1){
	var tempo = setInterval(function(){
		if(itemAtual===itemQtd-1){
		itemImagem.eq(itemQtd-1).fadeTo(800,0);
		itemImagem.eq(0).fadeTo(800,1);
		itemAtual=0;	
		}else{
		itemImagem.eq(itemAtual).fadeTo(800,0);
		itemImagem.eq(itemAtual+1).css({'opacity':1});
		itemAtual++;
		}
	},3000);
	}
}
/***************** COLECAO **************************/
function colecaoHover(){
	var firstNode = $('#colecoes').children('.colecao');
	firstNode.children('.itemColecao').css({'opacity':0.4});
	firstNode.children('.itemColecao').bind({
		mouseover: function(){
			$(this).stop(true,true).fadeTo(500,1);
		},
		mouseleave: function(){
			
			$(this).stop(true,true).fadeTo(300,0.4);
		}
		
	});
	firstNode.children('.itemColecao').mouseover(function(){
		
	});
}
function setaColecao(){
	var firstNodeCol = $('#colecoes').children('.colecao');
	var clique = 0;
	var clicado = 0;
	$('.seta').click(function(){
		var setaID = $(this).attr('id');
		if(setaID==='esquerdaColecao'){ ladoE = 'left';ladoD = 'right'}else{ ladoE = 'right';ladoD = 'left' }
		if(clicado===0){
			clicado=1;
		  if(clique===0){		
			  firstNodeCol.eq(0).hide('slide',{'direction':ladoE},function(){
				  firstNodeCol.eq(2).show('slide',{'direction':ladoD});	
			  });
			  firstNodeCol.eq(1).hide('slide',{'direction':ladoD},function(){
				  firstNodeCol.eq(3).show('slide',{'direction':ladoE});	
				  clicado=0;
			  });
		  clique=1;
		  }else if(clique===1){
			  firstNodeCol.eq(2).hide('slide',{'direction':ladoE},function(){
				  firstNodeCol.eq(0).show('slide',{'direction':ladoD});	
			  });
			  firstNodeCol.eq(3).hide('slide',{'direction':ladoD},function(){
				  firstNodeCol.eq(1).show('slide',{'direction':ladoE});
				  clicado=0;
			  });
		  clique=0;
		  }
		}
	});	
}
/**************** CLIPPING  ****************/
function clipping(){
	materias();
	quemUsa();
	videosClipping();
}
function materias(){
	/******* HOVER MATERIAS  ********/
	var itemMateria = $('#sliderMaterias').children('.item');
	itemMateria.bind({
		mouseover: function(){
			$(this).children('.texto').stop(true,true).show('fade',400);
		}  ,
		mouseleave: function(){
			$(this).children('.texto').stop(true,true).hide('fade',500);
		}
	});
	/****** SETA MATERIAS  ********/
	var cliques = 0;
	var qtdMaterias = itemMateria.length;
	$('#sliderMaterias').width(qtdMaterias*229);
	$('#dirMaterias').click(function(){
		itemMateria.eq(cliques+4).css({'opacity':'0'});
		if((cliques+4)<qtdMaterias){
			$('#sliderMaterias').stop(true,true).animate({
				'margin-left':-(229*(cliques+1))
			})
			itemMateria.eq(cliques+4).fadeTo(700,1);
			itemMateria.eq(cliques).fadeTo(300,0);
			cliques++;
		}
	});
	$('#esqMaterias').click(function(){
		if(cliques>0){
			$('#sliderMaterias').stop(true,true).animate({
				'margin-left':-(229*(cliques-1))
			})
			itemMateria.eq(cliques-1).fadeTo(700,1);	
			itemMateria.eq(cliques+3).fadeTo(300,0);
			cliques--;
		}
	});
	
}
/*** QUEM USA ***/
function quemUsa(){
	/******* HOVER QUEM USA  ********/
	var itemQuemUsa = $('#sliderQuemUsa').children('.item');
	itemQuemUsa.bind({
		mouseover: function(){
			$(this).children('.texto').stop(true,true).show('fade',400);
		}  ,
		mouseleave: function(){
			$(this).children('.texto').stop(true,true).hide('fade',500);
		}
	});
	/****** SETA QUEM USA  ********/
	var cliques2 = 0;
	var qtdQuemUsa = itemQuemUsa.length;
	$('#sliderQuemUsa').width(qtdQuemUsa*229);
	$('#dirQuemUsa').click(function(){
		itemQuemUsa.eq(cliques2+4).css({'opacity':'0'});
		if((cliques2+4)<qtdQuemUsa){
			$('#sliderQuemUsa').stop(true,true).animate({
				'margin-left':-(229*(cliques2+1))
			})
			itemQuemUsa.eq(cliques2+4).fadeTo(700,1);
			itemQuemUsa.eq(cliques2).fadeTo(300,0);			
			cliques2++;
		}
	});
	$('#esqQuemUsa').click(function(){
		if(cliques2>0){
			$('#sliderQuemUsa').stop(true,true).animate({
				'margin-left':-(229*(cliques2-1))
			})		
			itemQuemUsa.eq(cliques2-1).fadeTo(700,1);	
			itemQuemUsa.eq(cliques2+3).fadeTo(300,0);	
			cliques2--;
		}
	});
}
/***** VIDEOS  ****/
function videosClipping(){
	/******* HOVER QUEM USA  ********/
	var itemVideosClipping = $('#sliderVideosClipping').children('.item');
	itemVideosClipping.bind({
		mouseover: function(){
			$(this).children('.play').stop(true,true).show('fade',400);
		}  ,
		mouseleave: function(){
			$(this).children('.play').stop(true,true).hide('fade',500);
		}
	});
	/****** SETA QUEM USA  ********/
	var cliques3 = 0;
	var qtdVideosClipping = itemVideosClipping.length;
	$('#sliderVideosClipping').width(qtdVideosClipping*229);
	$('#dirVideosClipping').click(function(){
		itemVideosClipping.eq(cliques3+4).css({'opacity':'0'});
		if((cliques3+4)<qtdVideosClipping){
			$('#sliderVideosClipping').stop(true,true).animate({
				'margin-left':-(229*(cliques3+1))
			})
			itemVideosClipping.eq(cliques3+4).fadeTo(700,1);
			itemVideosClipping.eq(cliques3).fadeTo(300,0);			
			cliques3++;
		}
	});
	$('#esqVideosClipping').click(function(){
		if(cliques3>0){
			$('#sliderVideosClipping').stop(true,true).animate({
				'margin-left':-(229*(cliques3-1))
			})		
			itemVideosClipping.eq(cliques3-1).fadeTo(700,1);	
			itemVideosClipping.eq(cliques3+3).fadeTo(300,0);	
			cliques3--;
		}
	});
}