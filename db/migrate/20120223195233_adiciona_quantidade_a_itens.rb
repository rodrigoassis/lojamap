class AdicionaQuantidadeAItens < ActiveRecord::Migration
  def self.up
  	add_column :itens, :quantidade, :integer, :default => 1
  end

  def self.down
  	remove_column :itens, :quantidade
  end
end
