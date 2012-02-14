class CriaTabelaImagensProdutos < ActiveRecord::Migration
  def self.up
  create_table :imagens_produtos, :id => false do |t|
    t.integer :imagem_id
    t.integer :produto_id
  end
end

def self.down
  drop_table :imagens_produtos
end
end
