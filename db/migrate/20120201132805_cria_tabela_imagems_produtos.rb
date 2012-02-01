class CriaTabelaImagemsProdutos < ActiveRecord::Migration
  def self.up
  create_table :imagems_produtos, :id => false do |t|
    t.integer :imagem_id
    t.integer :produto_id
  end
end

def self.down
  drop_table :imagems_produtos
end
end
