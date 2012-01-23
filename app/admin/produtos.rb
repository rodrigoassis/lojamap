ActiveAdmin.register Produto do

filter :nome

index do
	column 'Imagem' do |produto|
		image_tag produto.imagem.url, :size => '30x30'
	end
	column :nome
	column :preco
	column :referencia
	column :categoria
	column :colecao
	default_actions
end

form :html => { :multipart => true } do |f|
	f.inputs "Detalhes do Produto" do
	  f.input :nome
    f.input :preco, :label => "Preço"
    f.input :categoria
    f.input :colecao
    f.input :imagem
  end
  f.buttons
end
  
end