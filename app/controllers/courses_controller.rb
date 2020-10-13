class CoursesController < ApplicationController
  def index
    @courses = current_user.courses
  end

  def new
    @course = Course.new
  end

  def show
  end

  def edit
  end

  def create
    @course = current_user.courses.build(course_params)
    if current_user.courses.find_by(semester: @course.semester, date: @course.date, period: @course.period)
      return render :new
    end
    if @course.save
      redirect_to  courses_path
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:year, :semester, :date, :period, :lecture)
  end
end
