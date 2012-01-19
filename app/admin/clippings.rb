ActiveAdmin.register Clipping do

filter :descricao

index do
	column :descricao
	column :tipo
	default_actions
end

form :html => { :multipart => true } do |f|
	f.inputs "Detalhes do Clipping" do
	  f.input :descricao, :label => 'Descrição'
    f.input :tipo, :as => :select, :collection => ['Matéria', 'Vídeo', 'Quem usa?']
    f.input :url
    f.input :imagem
  end
  f.buttons
end
  
end
