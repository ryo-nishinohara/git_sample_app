class LabsController < ApplicationController
  def show
    @lab = Lab.find_by(id: params[:lab_id])
    @reviews=ReviewLab.where(lab_id: params[:lab_id]).all.order(created_at: :desc)
    @average_of_difficulity = ReviewLab.where(lab_id: params[:lab_id]).all.sum(:difficulity)/(ReviewLab.where(lab_id: params[:lab_id]).count-ReviewLab.where(lab_id: params[:lab_id], difficulity: nil).count).to_f
    @average_of_fun = ReviewLab.where(lab_id: params[:lab_id]).all.sum(:fun)/(ReviewLab.where(lab_id: params[:lab_id]).count-ReviewLab.where(lab_id: params[:lab_id],fun: nil).count).to_f
    @number_of_reviews = ReviewLab.where(lab_id: params[:lab_id]).count
  end

  def index
    @labs = Lab.all
  end
  
end