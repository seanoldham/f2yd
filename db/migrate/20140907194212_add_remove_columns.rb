class AddRemoveColumns < ActiveRecord::Migration
  def change
  	remove_column :courses, :exam_date
  	add_column :courses, :exam_date, :string
    add_column :courses, :meet_time, :string
  end
end
