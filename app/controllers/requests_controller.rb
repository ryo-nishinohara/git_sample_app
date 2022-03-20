class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(
      user_name: params[:user_name],
      email: params[:email],
      content: params[:content]
    )
    if @request.save
      redirect_to("/")
      flash[:notice]="送信が完了しました"
    else
      render("requests/new")
    end
  end
end
