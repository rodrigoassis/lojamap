ActiveAdmin.register Conceito do

filter :nome

config.comments = false

index do
	column :nome
	column :colecao
	default_actions
end

form do |f|
	f.inputs "Detalhes do Conceito" do
	  f.input :nome
    f.input :colecao, :label => "Coleção", :label_method => :nome
    f.input :descricao, :label => "Descrição"
  end
  f.buttons
end
  
end
