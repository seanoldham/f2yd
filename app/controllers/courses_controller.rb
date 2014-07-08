class CoursesController < ApplicationController
  skip_before_filter :require_login

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
    @course_list = current_user.courses
  end

  def index
    @course = Course.new
    @course.user_id = current_user.id
  end

  def edit
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
    end
  end

  private
    def course_params
      params.require(:course).permit(:user_id, :course_num, :course_name, :meet_time, :room_num, :exam_date, :form_type)
    end
end
