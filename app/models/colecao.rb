class Colecao < ActiveRecord::Base

has_many :produtos
has_one :conceito

validates_presence_of :nome

end
