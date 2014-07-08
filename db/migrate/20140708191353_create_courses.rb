class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_num
    	t.string :course_name
    	t.string :meet_time
    	t.string :room_num
    	t.string :exam_date
    	t.string :form_type
      t.integer :user_id

      t.timestamps
    end
  end
end
