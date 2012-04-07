// JavaScript Document
$(document).ready(function(){
	topLogin();
	hoverNovidades();
	setaNovidades();
	vitrineSlide();
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
	var quantidade = $('#holderNovidades').children('.item').size();
	var cliques = 0;
	$('#setaEsquerda').click(function(){
		if(cliques+1<(quantidade-2)){
		  $('#holderNovidades').children('.item').eq(cliques+3).css({'opacity':'0'});
		  $('#holderNovidades').children('.item').eq(cliques).stop(true,true).fadeTo(300,0.0);
		  $('#holderNovidades').children('.item').eq(cliques+3).stop(true,true).fadeTo(800,1);
		  $('#holderNovidades').stop(true,true).animate({
			  'margin-left':-291*(cliques+1)
		  },600,'swing');
		  cliques++;
		}
	});
	$('#setaDireita').click(function(){
		if(cliques>0){
		  cliques--;
		  $('#holderNovidades').children('.item').eq(cliques+3).stop(true,true).fadeTo(300,0.0);
		  $('#holderNovidades').children('.item').eq(cliques).stop(true,true).fadeTo(800,1);
		  $('#holderNovidades').stop(true,true).animate({
			  'margin-left':-291*cliques
		  });
		}		
	});
}
/********************** VITRINE *********************/
function vitrineSlide(){
	var itemQtd = $('#imagemPrincipal').children('.image').size();
	var zIndex = itemQtd-1;
	for(var altera=0;altera<itemQtd;altera++){
		$('#imagemPrincipal').children('.image').eq(altera).css('z-index',zIndex);	
		zIndex--;
	}
	var itemAtual = 0
	if(itemQtd>1){
	var tempo = setInterval(function(){
		if(itemAtual===itemQtd-1){
		$('#imagemPrincipal').children('.image').eq(itemQtd-1).fadeTo(800,0);
		$('#imagemPrincipal').children('.image').eq(0).fadeTo(800,1);
		itemAtual=0;	
		}else{
		$('#imagemPrincipal').children('.image').eq(itemAtual).fadeTo(800,0);
		$('#imagemPrincipal').children('.image').eq(itemAtual+1).css({'opacity':1});
		itemAtual++;
		}
	},3000);
	}
}