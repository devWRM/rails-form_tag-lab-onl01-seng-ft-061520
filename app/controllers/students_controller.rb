class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    
    redirect_to students_path




    # Post.create(title: params[:post][:title], description: params[:post][:description])
    
    # redirect_to posts_path
  end

end
