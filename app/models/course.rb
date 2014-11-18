class Course < ActiveRecord::Base
  belongs_to :user
  has_many :exams, dependent: :destroy
  validates_presence_of :course_num,
                        :course_name,
                        :meet_time,
                        :room_num
end
