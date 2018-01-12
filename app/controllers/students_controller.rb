class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    # byebug
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
    # byebug
    @student.toggle(:active)
    @student.save
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
