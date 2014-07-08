class AddIndex < ActiveRecord::Migration
  def change
  	add_index :users, :remember_me_token
  	add_index :users, :email
  	add_index :users, :reset_password_token
  end
end
