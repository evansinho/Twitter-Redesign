# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_619_122_029) do
  create_table 'followings', force: :cascade do |t|
    t.integer 'Followerid'
    t.integer 'Followedid'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'likes', force: :cascade do |t|
    t.integer 'UserId'
    t.integer 'OpinionId'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'opinions', force: :cascade do |t|
    t.integer 'AuthorId'
    t.text 'Text'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'Fullname'
    t.string 'Username'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'Photo'
    t.string 'CoverImage'
    t.index ['Username'], name: 'index_users_on_Username', unique: true
  end
end
