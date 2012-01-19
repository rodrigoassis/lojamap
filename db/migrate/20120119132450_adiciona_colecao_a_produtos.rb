class AdicionaColecaoAProdutos < ActiveRecord::Migration
  def self.up
  	add_column :produtos, :colecao_id, :integer
  end

  def self.down
  	remove_column :produtos, :colecao_id
  end
end
