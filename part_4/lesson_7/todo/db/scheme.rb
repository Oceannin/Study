# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_21_154158) do

    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"
  
    create_table "events", comment: "Список дел", force: :cascade do |t|
      t.string "name", comment: "Заголовок"
      t.text "content", comment: "Детальное описание"
      t.boolean "done", default: false, comment: "Статус: завершенно (true), или нет (false)"
      t.datetime "finished_at", comment: "Дата и время завершения дела"
      t.bigint "user_id", comment: "Внешний ключ для связи с таблицей user"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["user_id"], name: "index_events_on_user_id"
    end
  
    create_table "items", comment: "Подпункты дела", force: :cascade do |t|
      t.string "name", comment: "Заголовок"
      t.boolean "done", default: false, comment: "Статус: завершенно (true), или нет (false)"
      t.datetime "finished_at", comment: "Дата и время завершения Подпункта"
      t.bigint "event_id", comment: "Внешний ключ для связи с таблицей events"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["event_id"], name: "index_items_on_event_id"
    end
  
    create_table "roles", comment: "Роли пользователя", force: :cascade do |t|
      t.string "name", comment: "Заголовок"
      t.string "code", comment: "Псевдоним"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  
    create_table "users", comment: "Пользователи системы", force: :cascade do |t|
      t.string "name", comment: "Имя пользователя"
      t.string "email", comment: "Электронный адрес пользователя"
      t.boolean "active", default: true, comment: "пользователь активен (true) или забанен (false)"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.integer "role_id", comment: "Роль пользователя"
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["name"], name: "index_users_on_name", unique: true
    end
  
    add_foreign_key "events", "users"
    add_foreign_key "items", "events"
    add_foreign_key "users", "roles"
  end
