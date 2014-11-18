class AddCourseRefToExams < ActiveRecord::Migration
  def change
    add_reference :exams, :course, index: true
  end
end
