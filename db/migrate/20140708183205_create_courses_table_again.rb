class CreateCoursesTableAgain < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :user
    	t.belongs_to :user
    	t.string :course_num
    	t.string :course_name
    	t.string :meet_time
    	t.string :room_num
    	t.string :exam_date
    	t.string :form_type
      t.timestamps
    end
  end
end
