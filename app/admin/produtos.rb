ActiveAdmin.register Produto do

filter :nome

config.comments = false

index do
	column 'Imagem' do |produto|
		image_tag produto.imagem.url(:thumb)
		#image_tag produto.imagem.url, :size => '100x100'
	end
	column :nome
	column :preco
	column :promocao
	column :preco_promocional
	column :referencia
	column :categoria
	column :colecao
	default_actions
end

form :html => { :multipart => true } do |f|
	f.inputs "Detalhes do Produto" do
	  f.input :nome
    f.input :preco, :label => "Preço"
    f.input :promocao, :label => "Promoção?"
    f.input :preco_promocional, :label => "Preço Promocional"
    f.input :categoria, :label_method => :nome
    f.input :colecao, :label => "Coleção", :label_method => :nome
    f.input :referencia, :label => "Referência"
    f.input :imagem
  end
  f.buttons
end
  
end
