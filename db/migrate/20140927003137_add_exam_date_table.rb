class AddExamDateTable < ActiveRecord::Migration
	def change
    create_table :exam_dates do |t|
      t.references :course
    	t.belongs_to :course
    	t.date :exam_date1
    	t.date :exam_date2
    	t.date :exam_date3
    	t.date :exam_date4
    	t.date :exam_date5
    	t.date :exam_date6
    	t.date :exam_date7
    	t.date :exam_date8
    	t.date :exam_date9
      t.timestamps
    end
  end
end
