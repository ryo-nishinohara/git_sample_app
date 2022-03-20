class ReviewLabsController < ApplicationController
  def new
    @review = ReviewLab.new
    @lab = Lab.find_by(id: params[:lab_id])
  end

  def create
    @review = ReviewLab.new(
      user_name: params[:user_name],
      lab_id: params[:lab_id],
      difficulity: params[:difficulity],
      fun: params[:fun],
      core_time_start_hour: params[:core_time_start_hour],
      core_time_start_min: params[:core_time_start_min],
      core_time_end_hour: params[:core_time_end_hour],
      core_time_end_min: params[:core_time_end_min],
      free_review: params[:free_review]
    )

    if @review.save
      redirect_to("/labs/#{params[:lab_id]}")
      flash[:notice] = "評価が投稿されました"
    else
      render("review_labs/new")
    end
  end
end
