class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    self.set_student
  
  end

  def edit
    self.set_student
  end
  def activate
    @student = Student.find(params[:id])
    @student.update(active: !@student.active)
    redirect_to student_path(@student)
  end


    def set_student
      @student = Student.find(params[:id])
    end
end
