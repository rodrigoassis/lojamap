ActiveAdmin.register Clipping do

filter :descricao

config.comments = false

index do
	column :descricao
	column :tipo
	default_actions
end

form :html => { :multipart => true } do |f|
	f.inputs "Detalhes do Clipping" do
	  f.input :descricao, :label => 'Descrição'
    f.input :tipo, :as => :select, :collection => ['Matéria', 'Vídeo', 'Quem usa?'], :include_blank => false
    f.input :url
    f.input :imagem
    f.input :legenda
  end
  f.buttons
end
  
end
