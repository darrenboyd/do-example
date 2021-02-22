class UploadsController < ApplicationController
  def index
    @uploads = Upload.order('created_at DESC').limit(200)
  end

  def create
    @upload = Upload.new(permitted_params)
    if @upload.save
      redirect_to action: :index
    else
      render action: :index
    end
  end

  private

  def permitted_params
    params.require(:upload).permit(:description, :file)
  end
end
