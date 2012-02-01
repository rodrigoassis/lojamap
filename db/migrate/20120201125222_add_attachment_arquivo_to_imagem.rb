class AddAttachmentArquivoToImagem < ActiveRecord::Migration
  def self.up
    add_column :imagems, :arquivo_file_name, :string
    add_column :imagems, :arquivo_content_type, :string
    add_column :imagems, :arquivo_file_size, :integer
    add_column :imagems, :arquivo_updated_at, :datetime
  end

  def self.down
    remove_column :imagems, :arquivo_file_name
    remove_column :imagems, :arquivo_content_type
    remove_column :imagems, :arquivo_file_size
    remove_column :imagems, :arquivo_updated_at
  end
end
