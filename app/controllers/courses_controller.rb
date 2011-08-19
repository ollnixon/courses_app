class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
    #@course.start_date = Date.today + 1
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to @course, :notice => "New course created."
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      redirect_to @course, :notice => "Course updated."
    else
      render :edit
    end
  end

  def destroy
    Course.destroy(params[:id])
    redirect_to :index, :notice => "Course deleted"
  end
end
