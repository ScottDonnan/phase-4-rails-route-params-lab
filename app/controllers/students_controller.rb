class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

  def find
    render json: Student.find_by(params[:key1], params[:value1])
  end

end
