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
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to schedule_url, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to schedule_url, notice: 'Course was successfully deleted.'
  end

  private
    def course_params
      params.require(:course).permit(:id, :user_id, :course_num, :course_name, :meet_time, :room_num, :exam_date, :form_type)
    end
end
