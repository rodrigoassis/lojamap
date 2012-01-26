class AdicionaLegendaAClipping < ActiveRecord::Migration
  def self.up
  	add_column :clippings, :legenda, :string
  end

  def self.down
  	remove_column :clippings, :legenda
  end
end
