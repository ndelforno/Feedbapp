class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new
    @request.question = params[:request][:question]
    @request.image = params[:request][:image]
    @request.user = current_user

    if @request.save
      redirect_to requests_url
    else
      render :new
    end
  end

  def update

  end

  def edit

  end

end
