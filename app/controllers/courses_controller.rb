class CoursesController < ApplicationController
	skip_before_filter :require_login
	def index
		@course = Course.new
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.create(course_params)
		if @course.save
			redirect_to schedule_url, :notice => "Course Added!"
		else
			redirect_to schedule_url, :notice => "Course not added. Try again."
		end
	end

	def show
		@course_list = Course.all
	end

	def edit
	end

	def destroy
	end

	private
  
  def course_params
    params.require(:course).permit(:course_num, :course_name, :meet_time, :room_num, :exam_date, :form_type)
  end
end
