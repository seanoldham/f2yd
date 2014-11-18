class ExamsController < ApplicationController
  before_action :require_login
  before_action :find_course
  
  def new
    @exam = @course.exams.new
  end

  def create
    @exam = @course.exams.new exam_params
    if @exam.save
      flash[:success] = "Added exam to course."
      redirect_to schedule_path
    else
      render 'new'
    end
  end

  def update
    @exam = @course.exams.find params[:id]
    if @exam.update_attributes exam_params
      flash[:success] = "Exam edited."
      redirect_to schedule_path
    else
      render 'edit'
    end
  end

  def edit
    @exam = @course.exams.find params[:id]
  end

  def destroy
    @exam = @course.exams.find params[:id]
    if @exam.destroy
      flash[:success] = "Exam deleted from course."
      redirect_to schedule_path
    else
      flash[:error] = "There was a problem deleting that exam from course."
    end
  end

  # currently not in use
  def index
  end
  
  # currently not in use
  def show
  end
  
  private
    def find_course
      @course = current_user.courses.find params[:course_id]
    end
  
    def exam_params
      params[:exam].permit(:date,:form_type)
    end
end
