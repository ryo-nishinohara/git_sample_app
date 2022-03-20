class CoursesController < ApplicationController
  def show
    @course = Course.find_by(id: params[:course_id])
    @reviews=ReviewCourse.where(course_id: params[:course_id]).all.order(created_at: :desc)
    @average_of_difficulity = ReviewCourse.where(course_id: params[:course_id]).all.sum(:difficulity)/(ReviewCourse.where(course_id: params[:course_id]).count-ReviewCourse.where(course_id: params[:course_id], difficulity: nil).count).to_f
    @average_of_fun = ReviewCourse.where(course_id: params[:course_id]).all.sum(:fun)/(ReviewCourse.where(course_id: params[:course_id]).count-ReviewCourse.where(course_id: params[:course_id], fun: nil).count).to_f
    
    if ReviewCourse.where(course_id: params[:course_id]).count != 0
      @pass_rate = (ReviewCourse.where(course_id: params[:course_id]).count-ReviewCourse.where(course_id: params[:course_id], grade: 0).count)/ReviewCourse.where(course_id: params[:course_id]).count.to_f*100
    else
      @pass_rate = -1
    end
    
    @number_of_reviews = ReviewCourse.where(course_id: params[:course_id]).count
  end

  def index
    @courses = Course.all
  end
end
