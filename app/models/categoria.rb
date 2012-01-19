class Categoria < ActiveRecord::Base

has_many :produtos

validates_presence_of :nome

end
