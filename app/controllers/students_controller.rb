class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @post.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @post.save
    redirect_to post_path(@student)
  end

end
