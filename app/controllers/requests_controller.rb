class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
    @choice = Choice.new
  end

  def create
    @request = Request.new
    @request.question = params[:request][:question]
    @request.image.attach(params[:request][:image])
    @request.user = current_user

    if @request.save
      redirect_to new_request_choice_path(@request)
    else
      render :new
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  def update

  end

  def edit

  end

end
