class ReviewCoursesController < ApplicationController
    def new
        @review = ReviewCourse.new
        @course = Course.find_by(id: params[:course_id])
    end
    
    def create
      @review = ReviewCourse.new(
        user_name: params[:user_name],
        course_id: params[:course_id],
        difficulity: params[:difficulity],
        fun: params[:fun],
        grade: params[:grade],
        attendance: params[:attendance],
      free_review: params[:free_review]
      )
    
      if @review.save
        redirect_to("/courses/#{params[:course_id]}")
        flash[:notice] = "評価が投稿されました"
      else
        render("review_courses/new")
      end
    end  
end
