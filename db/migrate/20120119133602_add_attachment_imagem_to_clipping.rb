class AddAttachmentImagemToClipping < ActiveRecord::Migration
  def self.up
    add_column :clippings, :imagem_file_name, :string
    add_column :clippings, :imagem_content_type, :string
    add_column :clippings, :imagem_file_size, :integer
    add_column :clippings, :imagem_updated_at, :datetime
  end

  def self.down
    remove_column :clippings, :imagem_file_name
    remove_column :clippings, :imagem_content_type
    remove_column :clippings, :imagem_file_size
    remove_column :clippings, :imagem_updated_at
  end
end
