class RemoveCols < ActiveRecord::Migration
  def change
  	remove_column :users, :class_num, :string, :default => nil
  	remove_column :users, :class_name, :string, :default => nil
  	remove_column :users, :meet_time, :string, :default => nil
  	remove_column :users, :room_num, :string, :default => nil
  	remove_column :users, :exam_date, :string, :default => nil
  	remove_column :users, :form_type, :string, :default => nil
  end
end
