class ChoicesController < ApplicationController

  def new
    @choice = Choice.new
    @request.find(params[:request_id])
  end

  def create
    @choice = Choice.new
    @request.find(params[:request_id])
    @choice.choice_text = params[:choice][:choice_text]
    @choice.request_id = @request.id
  end

end
