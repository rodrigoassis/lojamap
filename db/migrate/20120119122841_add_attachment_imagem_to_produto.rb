class AddAttachmentImagemToProduto < ActiveRecord::Migration
  def self.up
    add_column :produtos, :imagem_file_name, :string
    add_column :produtos, :imagem_content_type, :string
    add_column :produtos, :imagem_file_size, :integer
    add_column :produtos, :imagem_updated_at, :datetime
  end

  def self.down
    remove_column :produtos, :imagem_file_name
    remove_column :produtos, :imagem_content_type
    remove_column :produtos, :imagem_file_size
    remove_column :produtos, :imagem_updated_at
  end
end
