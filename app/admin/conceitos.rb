ActiveAdmin.register Conceito do

filter :nome

config.comments = false

index do
	column 'Fotos' do |conceito|
		image_tag conceito.fotos[0].arquivo.url(:thumb)
	end
	column :nome
	column :colecao
	default_actions
end

form :html => { :multipart => true } do |f|
    f.inputs do
      f.input :nome
      f.input :colecao, :label => "Coleção", :label_method => :nome
      f.input :descricao, :label => "Descrição"
    end

    f.inputs "Fotos do Álbum" do
      f.has_many :fotos do |j|
        j.input :legenda
        j.input :arquivo, :as => :file
      end
    end

    f.buttons
  end
  
end
