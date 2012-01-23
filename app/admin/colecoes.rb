ActiveAdmin.register Colecao do

menu :label => "Coleções"

config.comments = false

filter :nome

index do
	column :nome
	default_actions
end
  
end
