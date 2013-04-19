# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130419112453) do

    create_table "accesses", :force => true do |t|
        t.string "access_name"
        t.boolean "user_editor"
        t.boolean "good_editor"
        t.boolean "board_editor"
        t.datetime "created_at", :null => false
        t.datetime "updated_at", :null => false
    end

    create_table "accesses_groups", :id => false, :force => true do |t|
        t.integer "access_id"
        t.integer "group_id"
        t.datetime "created_at", :null => false
        t.datetime "updated_at", :null => false
    end

    create_table "books", :force => true do |t|
        t.float "onsale"
        t.string "book_info", :limit => 60
        t.integer "call_number"
        t.integer "catagory_id"
        t.datetime "created_at", :null => false
        t.datetime "updated_at", :null => false
    end

    create_table "catagories", :force => true do |t|
        t.string "catagory_name"
        t.datetime "created_at", :null => false
        t.datetime "updated_at", :null => false
        t.integer "parent_catagory_id"
    end

    create_table "groups", :force => true do |t|
        t.string "group_name"
        t.datetime "created_at", :null => false
        t.datetime "updated_at", :null => false
    end

    create_table "users", :force => true do |t|
        t.string "name"
        t.string "password_digest"
        t.string "salt"
        t.string "email"
        t.string "last_login_ip"
        t.string "last_login_time"
        t.datetime "created_at", :null => false
        t.datetime "updated_at", :null => false
        t.integer "group_id"
    end

end
