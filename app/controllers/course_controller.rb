class CourseController < ApplicationController
  def show
    @course = Course.find(params[:id])
  end
end
