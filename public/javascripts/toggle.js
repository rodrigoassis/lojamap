$(document).ready(function() {
  $('#clipping_imagem_input').toggle($('#clipping_tipo').val() == "Matéria" || "Quem usa?");
  $('#clipping_url_input').toggle($('#clipping_tipo').val() == "Vídeo");
  
  $('#clipping_tipo').change(function() {
    $('#clipping_imagem_input').toggle($('#clipping_tipo').val() == "Matéria" || "Quem usa?");
		$('#clipping_url_input').toggle($('#clipping_tipo').val() == "Vídeo");
  });
  
  if ( $('#produto_promocao').val() == false  ) {
		$('#produto_preco_promocional_input').hide();
	} else {
		$('#produto_preco_promocional_input').show();
	}
  
  $('#produto_promocao').change(function() {
    $('#produto_preco_promocional_input').toggle("slow");
  });
  
});
