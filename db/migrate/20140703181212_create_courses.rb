class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :users_id
    	t.belongs_to :users
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
