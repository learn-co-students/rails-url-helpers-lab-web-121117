class StudentsController < ApplicationController
  before_action :set_student, only: :show
  #get
  def index
    @students = Student.all
  end

#get
  def show
    @student = Student.find(params[:id])
  end
#get
  def activate
    @student = Student.find(params[:id])
  end
#patch
  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    byebug
    redirect_to @student
  end
# patch
# def activate
#   @student = Student.find(params[:id])
#   redirect_to student_path(@student)
# end

  private

  def student_params
    params.require(:student).permit(:active)
  end

    def set_student
      @student = Student.find(params[:id])
    end
end
