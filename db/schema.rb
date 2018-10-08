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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_06_09_140017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acao", primary_key: "acao_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "acao_nome", limit: 20
    t.string "acao_classe", limit: 20
    t.integer "exc_id"
  end

  create_table "acaos", force: :cascade do |t|
    t.string "acao_nome"
    t.string "acao_classe"
    t.bigint "excecao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["excecao_id"], name: "index_acaos_on_excecao_id"
  end

  create_table "excecao", primary_key: "exc_id", id: :integer, default: nil, force: :cascade do |t|
    t.date "data"
    t.datetime "hora"
  end

  create_table "excecaos", force: :cascade do |t|
    t.date "data"
    t.datetime "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "http", primary_key: "view_id", id: :integer, default: nil, force: :cascade do |t|
    t.text "view_referer"
    t.text "view_url"
    t.text "view_method"
    t.integer "req_id"
  end

  create_table "https", force: :cascade do |t|
    t.text "view_referer"
    t.text "view_url"
    t.text "view_method"
    t.bigint "requisicao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requisicao_id"], name: "index_https_on_requisicao_id"
  end

  create_table "objsessao", primary_key: "object_id", id: :integer, default: nil, force: :cascade do |t|
    t.text "obj_text"
    t.integer "sessao_id"
  end

  create_table "objsessaos", force: :cascade do |t|
    t.text "obj_text"
    t.bigint "sessao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sessao_id"], name: "index_objsessaos_on_sessao_id"
  end

  create_table "parametro", primary_key: "param_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "param_tipo", limit: 20
    t.string "param_nome", limit: 20
    t.integer "req_id"
  end

  create_table "parametros", force: :cascade do |t|
    t.string "param_tipo"
    t.string "param_nome"
    t.bigint "requisicao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requisicao_id"], name: "index_parametros_on_requisicao_id"
  end

  create_table "requisicao", primary_key: "req_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "req_agent", limit: 20
    t.string "req_encode", limit: 20
    t.integer "acao_id"
  end

  create_table "requisicaos", force: :cascade do |t|
    t.string "req_agent"
    t.string "req_encode"
    t.bigint "acao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acao_id"], name: "index_requisicaos_on_acao_id"
  end

  create_table "sessao", primary_key: "sessao_id", id: :integer, default: nil, force: :cascade do |t|
    t.integer "req_id"
  end

  create_table "sessaos", force: :cascade do |t|
    t.bigint "requisicao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requisicao_id"], name: "index_sessaos_on_requisicao_id"
  end

  add_foreign_key "acao", "excecao", column: "exc_id", primary_key: "exc_id", name: "acao_exc_id_fkey"
  add_foreign_key "acaos", "excecaos"
  add_foreign_key "http", "requisicao", column: "req_id", primary_key: "req_id", name: "http_req_id_fkey"
  add_foreign_key "https", "requisicaos"
  add_foreign_key "objsessao", "sessao", primary_key: "sessao_id", name: "objsessao_sessao_id_fkey"
  add_foreign_key "objsessaos", "sessaos"
  add_foreign_key "parametro", "requisicao", column: "req_id", primary_key: "req_id", name: "parametro_req_id_fkey"
  add_foreign_key "parametros", "requisicaos"
  add_foreign_key "requisicao", "acao", primary_key: "acao_id", name: "requisicao_acao_id_fkey"
  add_foreign_key "requisicaos", "acaos"
  add_foreign_key "sessao", "requisicao", column: "req_id", primary_key: "req_id", name: "sessao_req_id_fkey"
  add_foreign_key "sessaos", "requisicaos"
end
