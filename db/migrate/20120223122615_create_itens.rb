class CreateItens < ActiveRecord::Migration
  def self.up
    create_table :itens do |t|
      t.integer :produto_id
      t.integer :cart_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itens
  end
end
