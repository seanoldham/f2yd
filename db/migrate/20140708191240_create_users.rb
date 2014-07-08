class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	    t.string   "email",                           null: false
	    t.string   "crypted_password",                null: false
	    t.string   "salt",                            null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "remember_me_token"
	    t.datetime "remember_me_token_expires_at"
	    t.string   "reset_password_token"
	    t.datetime "reset_password_token_expires_at"
	    t.datetime "reset_password_email_sent_at"
      t.timestamps
    end
  end
end
