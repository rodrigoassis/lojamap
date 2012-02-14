class AddAttachmentArquivoToImagem < ActiveRecord::Migration
  def self.up
    add_column :imagens, :arquivo_file_name, :string
    add_column :imagens, :arquivo_content_type, :string
    add_column :imagens, :arquivo_file_size, :integer
    add_column :imagens, :arquivo_updated_at, :datetime
  end

  def self.down
    remove_column :imagens, :arquivo_file_name
    remove_column :imagens, :arquivo_content_type
    remove_column :imagens, :arquivo_file_size
    remove_column :imagens, :arquivo_updated_at
  end
end
