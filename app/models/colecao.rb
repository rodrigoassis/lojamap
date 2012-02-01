class Colecao < ActiveRecord::Base

has_many :produtos
has_one :conceito
has_one :lookbook

validates_presence_of :nome

end
