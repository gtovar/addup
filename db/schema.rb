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

ActiveRecord::Schema.define(:version => 20121022154922) do

  create_table "campaigns", :force => true do |t|
    t.integer  "student_id"
    t.integer  "goal"
    t.date     "timer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "campaigns", ["student_id"], :name => "index_campaigns_on_student_id"

  create_table "careers", :force => true do |t|
    t.string   "name"
    t.integer  "years"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "donations", :force => true do |t|
    t.integer  "money"
    t.integer  "student_id"
    t.integer  "adduper_id"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partnerships", :force => true do |t|
    t.string   "name"
    t.string   "url_logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payment_notifications", :force => true do |t|
    t.text     "params"
    t.string   "status"
    t.string   "transaction_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "university_id"
    t.integer  "career_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.boolean  "verified"
    t.string   "review"
    t.integer  "university_id"
    t.string   "job"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "sponsors", ["university_id"], :name => "index_sponsors_on_university_id"

  create_table "student_applications", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "nationality"
    t.string   "email"
    t.string   "university"
    t.integer  "degree"
    t.string   "field_of_study"
    t.string   "current_year"
    t.string   "length_of_program"
    t.decimal  "crowdfundig_goal_usd"
    t.decimal  "total_annual_cost_of_attendance"
    t.date     "time_frame"
    t.string   "link_or_attachment_of_photos"
    t.string   "link_of_video"
    t.string   "cause"
    t.string   "student_sponsor_for_the_community_service_project"
    t.text     "answer1"
    t.text     "answer2"
    t.integer  "univesity_back_account"
    t.string   "students_university_id_reference"
    t.boolean  "answer3"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "university_id"
    t.integer  "career_id"
    t.string   "enrollment"
    t.integer  "sponsor_id"
    t.integer  "partnership_id"
    t.string   "country"
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.string   "account"
    t.text     "question1"
    t.text     "question2"
    t.boolean  "verified"
    t.text     "url_video"
    t.string   "url_facebook"
    t.string   "url_twitter"
    t.integer  "current_year"
    t.string   "cause"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "students", ["career_id"], :name => "index_students_on_career_id"
  add_index "students", ["partnership_id"], :name => "index_students_on_partnership_id"
  add_index "students", ["sponsor_id"], :name => "index_students_on_sponsor_id"
  add_index "students", ["university_id"], :name => "index_students_on_university_id"

  create_table "universities", :force => true do |t|
    t.string   "name"
    t.string   "url_logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
