class ChangeDataTypes < ActiveRecord::Migration
  def change
    remove_column :courses, :exam_date
    remove_column :courses, :meet_time
  	add_column :courses, :exam_date, :string
    add_column :courses, :meet_time, :string
  end
end
