class ResponsesController < ApplicationController

  def new
    @response = Response.new
    @request = Request.find(params[:request_id])
  end

  def create
    @response = Response.new
    @request = Request.find(params[:request_id])

    @response.user = current_user
    @response.request_id = @request.id
    @response.choice_id = params[:choice_id]
    @response.comment = params[:response][:comment]

    if @response.save
      redirect_to new_request_choice_path(@request)
    end
  end
end
