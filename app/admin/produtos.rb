ActiveAdmin.register Produto do

filter :nome

config.comments = false

index do
	column 'Imagem' do |produto|
		image_tag produto.imagem.url(:thumb)
		#image_tag produto.imagem.url, :size => '30x30'
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
    f.input :categoria, :label_method => :nome
    f.input :colecao, :label => "Coleção", :label_method => :nome
    f.input :imagem
  end
  f.buttons
end
  
end
