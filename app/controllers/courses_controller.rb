class CoursesController < ApplicationController
  before_action :require_login

  def new
    @course = current_user.courses.new
  end

  def create
    @course = current_user.courses.create course_params
    if @course.save
      flash[:success] = "Course Added."
      redirect_to schedule_url
    else
      render 'new'
    end
  end

  # currently not in use
  def show
  end

  def index
    @course_list = current_user.courses
  end

  def edit
    @course = current_user.courses.find params[:id]
  end

  def update
    @course = current_user.courses.find params[:id]

    if @course.update course_params
      flash[:success] = "Course was successfully updated."
      redirect_to schedule_url
    else
      render 'edit'
    end
  end

  def destroy
    @course = current_user.courses.find params[:id]
    
    if @course.destroy
      flash[:success] = "Course was successfully deleted."
      redirect_to schedule_url
    else
      flash[:warning] = "Course is not deleted!"
      redirect_to schedule_url
    end
  end

  private
    def course_params
      params.require(:course).permit(:course_num, :course_name, :meet_time, :room_num, :exam_date, :form_type)
    end
end
