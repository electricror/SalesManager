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

ActiveRecord::Schema.define(:version => 20110705071448) do

  create_table "grupo_produtos", :force => true do |t|
    t.string   "nome",       :limit => 170
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grupo_produtos", ["nome"], :name => "index_grupo_produtos_on_nome"

  create_table "produtos", :force => true do |t|
    t.string   "nome",            :limit => 70
    t.text     "descricao"
    t.integer  "unidade"
    t.integer  "precoCusto"
    t.integer  "precoVenda"
    t.integer  "maoObra"
    t.integer  "total"
    t.integer  "estoque"
    t.integer  "estoqueMinimo"
    t.integer  "codigoBarras"
    t.boolean  "ativo"
    t.integer  "grupoProduto_id"
    t.integer  "fornecedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "produtos", ["fornecedor_id"], :name => "index_produtos_on_fornecedor_id"
  add_index "produtos", ["grupoProduto_id"], :name => "index_produtos_on_grupoProduto_id"
  add_index "produtos", ["nome"], :name => "index_produtos_on_nome"

end
