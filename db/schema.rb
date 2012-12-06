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

ActiveRecord::Schema.define(:version => 20121206173005) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "advisors", :force => true do |t|
    t.string   "photo"
    t.string   "name"
    t.string   "job"
    t.string   "quote"
    t.string   "email"
    t.string   "jobp"
    t.text     "feedback"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contact_forms", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "donations", :force => true do |t|
    t.integer  "student_application_id"
    t.string   "status"
    t.string   "transaction_id"
    t.decimal  "mc_gross"
    t.datetime "received_at"
    t.string   "invoice"
    t.string   "currency"
    t.text     "params"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "student_applications", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "nationality"
    t.string   "email"
    t.string   "university"
    t.string   "degree"
    t.string   "field_of_study"
    t.string   "current_year"
    t.string   "length_of_program"
    t.decimal  "crowdfundig_goal_usd"
    t.decimal  "total_annual_cost_of_attendance"
    t.string   "time_frame"
    t.string   "link_or_attachment_of_photos"
    t.string   "link_of_video"
    t.string   "cause"
    t.string   "name_sponsor"
    t.string   "job"
    t.string   "email_sponsor"
    t.string   "quote"
    t.text     "answer1"
    t.text     "answer2"
    t.integer  "univesity_bank_account"
    t.integer  "method_of_payment"
    t.string   "pay_of_the_order_of"
    t.string   "name_check"
    t.string   "adress_check"
    t.string   "zipcode_check"
    t.string   "state_check"
    t.string   "city_check"
    t.string   "students_university_id_reference"
    t.boolean  "answer3"
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.string   "p5"
    t.string   "p6"
    t.string   "p7"
    t.string   "p8"
    t.string   "p9"
    t.string   "p10"
    t.string   "name_of_university"
    t.string   "email_of_confirmation"
    t.string   "name_of_bank"
    t.integer  "bank_account"
    t.integer  "abbarouting"
    t.string   "swift"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

end
