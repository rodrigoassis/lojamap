# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120511140524) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clippings", :force => true do |t|
    t.string   "descricao"
    t.string   "url"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
    t.string   "legenda"
  end

  create_table "colecoes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conceitos", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.integer  "colecao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contatos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.string   "legenda"
    t.integer  "conceito_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
  end

  create_table "imagens", :force => true do |t|
    t.string   "legenda"
    t.integer  "lookbook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
  end

  create_table "imagens_produtos", :id => false, :force => true do |t|
    t.integer "imagem_id"
    t.integer "produto_id"
  end

  create_table "itens", :force => true do |t|
    t.integer  "produto_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantidade", :default => 1
  end

  create_table "lookbooks", :force => true do |t|
    t.string   "nome"
    t.integer  "colecao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.decimal  "preco"
    t.integer  "categoria_id"
    t.string   "referencia"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
    t.integer  "colecao_id"
    t.boolean  "promocao",            :default => false
    t.decimal  "preco_promocional"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
