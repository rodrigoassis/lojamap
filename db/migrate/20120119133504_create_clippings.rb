class CreateClippings < ActiveRecord::Migration
  def self.up
    create_table :clippings do |t|
      t.string :descricao
      t.string :url
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :clippings
  end
end
