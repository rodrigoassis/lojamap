ActiveAdmin.register Produto do

filter :nome

index do
	column :nome
	column :preco
	column :referencia
	column :categoria
	default_actions
end

form :html => { :multipart => true } do |f|
	f.inputs "Detalhes do Produto" do
	  f.input :nome
    f.input :preco, :label => "Preço"
    f.input :categoria
    f.input :imagem
  end
  f.buttons
end
  
end
