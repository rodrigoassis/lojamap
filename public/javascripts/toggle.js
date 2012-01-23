$(document).ready(function() {
  $('#clipping_imagem_input').toggle($('#clipping_tipo').val() == "Matéria" || "Quem usa?");
  $('#clipping_url_input').toggle($('#clipping_tipo').val() == "Vídeo");
  
  $('#clipping_tipo').change(function() {
    $('#clipping_imagem_input').toggle("slow");
		$('#clipping_url_input').toggle("slow");
  });
});
