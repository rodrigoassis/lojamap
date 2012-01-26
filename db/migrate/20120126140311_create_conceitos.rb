class CreateConceitos < ActiveRecord::Migration
  def self.up
    create_table :conceitos do |t|
      t.string :nome
      t.string :descricao
      t.integer :colecao_id

      t.timestamps
    end
  end

  def self.down
    drop_table :conceitos
  end
end
