class Exam < ActiveRecord::Base
  belongs_to :course
  validates_presence_of :date,
                        :form_type
end
