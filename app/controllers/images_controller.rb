class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  def new
    @image = Image.new
  end
  def show 
    @image = Image.find(params[:id])
  end
  def create
    #render plain: params[:image].inspect
    @image = Image.new(image_params)
    if @image.save
      flash[:notice] = "Image is created successfully"
      redirect_to @image
    else
      render 'new'
    end
  end

  private
    def image_params
      params.require(:image).permit(:name,:caption)
    end
end
