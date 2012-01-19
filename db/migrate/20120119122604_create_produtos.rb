class CreateProdutos < ActiveRecord::Migration
  def self.up
    create_table :produtos do |t|
      t.string	:nome
      t.decimal :preco
      t.integer :categoria_id
      t.string :referencia

      t.timestamps
    end
  end

  def self.down
    drop_table :produtos
  end
end
