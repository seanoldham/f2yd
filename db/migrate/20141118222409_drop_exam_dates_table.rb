class DropExamDatesTable < ActiveRecord::Migration
  def change
  	drop_table :exam_dates
  end
end
