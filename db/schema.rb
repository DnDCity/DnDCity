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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140219185007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: true do |t|
    t.string   "name",                       null: false
    t.integer  "user_id",                    null: false
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "public",     default: false
    t.boolean  "open",       default: false
  end

  create_table "character_classes", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.string   "hit_die"
    t.string   "alignment_restrictions"
    t.float    "base_attack_bonus"
    t.float    "attack_bonus_per_level"
    t.float    "base_fort_save"
    t.float    "fort_save_bonus_per_level"
    t.float    "base_reflex_save"
    t.float    "reflex_save_bonus_per_level"
    t.float    "base_will_save"
    t.float    "will_save_bonus_per_level"
    t.integer  "bonus_feat"
    t.integer  "bonus_skill_points"
    t.integer  "bonus_skill_points_per_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_levels", force: true do |t|
    t.integer  "character_id"
    t.integer  "level"
    t.integer  "character_class_id"
    t.integer  "class_level"
    t.integer  "hp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "character_levels", ["character_class_id"], name: "index_character_levels_on_character_class_id", using: :btree

  create_table "characters", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "race_id"
    t.integer  "size_id"
    t.string   "gender"
    t.string   "alignment"
    t.string   "religion"
    t.string   "height"
    t.float    "weight"
    t.integer  "age"
    t.string   "looks"
    t.text     "desc"
    t.integer  "base_str"
    t.integer  "base_dex"
    t.integer  "base_con"
    t.integer  "base_int"
    t.integer  "base_wis"
    t.integer  "base_cha"
    t.integer  "current_hp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "public",     default: false
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "effects", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.text     "effects"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feat_types", force: true do |t|
    t.string   "name",       null: false
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feats", force: true do |t|
    t.string   "name",               null: false
    t.text     "desc"
    t.integer  "feat_type_id"
    t.text     "modifiers"
    t.text     "prerequisites"
    t.text     "benefit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "fighter_bonus_feat"
    t.integer  "character_class_id"
  end

  add_index "feats", ["character_class_id"], name: "index_feats_on_character_class_id", using: :btree
  add_index "feats", ["feat_type_id"], name: "index_feats_on_feat_type_id", using: :btree
  add_index "feats", ["fighter_bonus_feat"], name: "index_feats_on_fighter_bonus_feat", using: :btree

  create_table "hairs", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prerequisite_feats", id: false, force: true do |t|
    t.integer "feat_id"
    t.integer "prerequisite_id"
  end

  add_index "prerequisite_feats", ["feat_id"], name: "index_prerequisite_feats_on_feat_id", using: :btree
  add_index "prerequisite_feats", ["prerequisite_id"], name: "index_prerequisite_feats_on_prerequisite_id", using: :btree

  create_table "races", force: true do |t|
    t.string   "name"
    t.integer  "size_id"
    t.integer  "speed"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "int"
    t.integer  "wis"
    t.integer  "cha"
    t.integer  "bonus_feat"
    t.integer  "bonus_skill_points"
    t.integer  "bonus_skill_points_per_level"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "sizes", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "key"
    t.string   "url"
    t.string   "key_ability"
    t.boolean  "trained_only"
    t.boolean  "armor_check_penalty"
  end

  create_table "spell_component_types", force: true do |t|
    t.string   "name"
    t.string   "key"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spell_levels", force: true do |t|
    t.integer  "spell_id"
    t.integer  "character_class_id"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spell_levels", ["character_class_id"], name: "index_spell_levels_on_character_class_id", using: :btree
  add_index "spell_levels", ["spell_id"], name: "index_spell_levels_on_spell_id", using: :btree

  create_table "spell_schools", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spell_sub_schools", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "spell_school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spell_sub_schools", ["spell_school_id"], name: "index_spell_sub_schools_on_spell_school_id", using: :btree

  create_table "spells", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "modifiers"
    t.text     "prerequisites"
    t.string   "descriptor"
    t.string   "casting_time"
    t.string   "range"
    t.string   "target"
    t.string   "area"
    t.string   "spread"
    t.string   "duration"
    t.string   "saving_throw"
    t.string   "spell_resistance"
    t.integer  "spell_sub_school_id"
  end

  add_index "spells", ["spell_sub_school_id"], name: "index_spells_on_spell_sub_school_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
