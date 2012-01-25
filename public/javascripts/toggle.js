$(document).ready(function() {
  $('#clipping_imagem_input').toggle($('#clipping_tipo').val() == "Matéria" || $('#clipping_tipo').val() == "Quem usa?");
  $('#clipping_url_input').toggle($('#clipping_tipo').val() == "Vídeo");
  
  $('#clipping_tipo').change(function() {
    $('#clipping_imagem_input').toggle($('#clipping_tipo').val() == "Matéria" || $('#clipping_tipo').val() == "Quem usa?");
		$('#clipping_url_input').toggle($('#clipping_tipo').val() == "Vídeo");
  });
  
  if ( $('#produto_promocao').is(':checked')) {
		$('#produto_preco_promocional_input').show();
	} else {
		$('#produto_preco_promocional_input').hide();
	}
  
  $('#produto_promocao').change(function() {
    $('#produto_preco_promocional_input').toggle("slow");
  });
  
});
