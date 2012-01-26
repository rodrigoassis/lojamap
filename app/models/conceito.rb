class Conceito < ActiveRecord::Base

belongs_to :colecao

validates_presence_of :nome, :colecao_id

end
