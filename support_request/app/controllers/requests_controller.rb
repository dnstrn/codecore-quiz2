class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    request_params = params.require(:request).permit(:name, :email, :department, :message)
    @request = Request.new(request_params)

    if @request.save
      redirect_to requests_path(@request)
    else
      render :new
    end
  end

  def show
    @request = Request.find params(:id)
  end

  def index
    @request = Request.all
  end

end
