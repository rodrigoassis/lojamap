class AdicionaPromocaoAProdutos < ActiveRecord::Migration
  def self.up
  	add_column :produtos, :promocao, :boolean, :default => false
  	add_column :produtos, :preco_promocional, :decimal
  end

  def self.down
  	remove_column :produtos, :promocao
  	remove_column :produtos, :preco_promocional  	
  end
end
