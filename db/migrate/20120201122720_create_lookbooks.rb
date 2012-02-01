class CreateLookbooks < ActiveRecord::Migration
  def self.up
    create_table :lookbooks do |t|
      t.string :nome
      t.integer :colecao_id

      t.timestamps
    end
  end

  def self.down
    drop_table :lookbooks
  end
end
