class CreateImagems < ActiveRecord::Migration
  def self.up
    create_table :imagems do |t|
      t.string :legenda
      t.integer :lookbook_id

      t.timestamps
    end
  end

  def self.down
    drop_table :imagems
  end
end
