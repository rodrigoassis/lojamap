class CreateContatos < ActiveRecord::Migration
  def self.up
    create_table :contatos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :contatos
  end
end
