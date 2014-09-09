class AddRemoveColumnsTakeTwo < ActiveRecord::Migration
  def change
  	remove_column :courses, :exam_date
    remove_column :courses, :meet_time
  	add_column :courses, :exam_date, :date
    add_column :courses, :meet_time, :time
  end
end
