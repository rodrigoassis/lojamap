class CreateImagens < ActiveRecord::Migration
  def self.up
    create_table :imagens do |t|
      t.string :legenda
      t.integer :lookbook_id

      t.timestamps
    end
  end

  def self.down
    drop_table :imagens
  end
end
