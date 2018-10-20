class ChoicesController < ApplicationController

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new
    @choice.choice_text = params[:choice][:choice_text]
    @choice.request_id = params[:request][:request_id]
  end

end
