class ChoicesController < ApplicationController

  def new
    @choice = Choice.new
    @request = Request.find(params[:request_id])
  end

  def create
    @choice = Choice.new
    @request = Request.find(params[:request_id])

    @choice.choice_text = params[:choice][:choice_text]
    @choice.request_id = @request.id

    if @choice.save
      redirect_to new_request_choice_path(@request)
    else
      redirect_to request_path(@request)
    end

  end

end
