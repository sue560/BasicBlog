class ImageuploaderController < ApplicationController
  def index
    @imageuploader=Imageuploader.all
  end

  def new
    @imageuploader=Imageuploader.new
  end

  def create
    @imageuploader=Imageuploader.new(imaeuploader_params)

    if @imageuploader.save
      redirect_to @post, notice: "The image has been uploaded."
    else
      render "new", notice: "Please try again"
    end
  end

  def destroy
    @imageuploader=Imageuploader.find(params[:id])
    @imageuploader.destroy
    redirect_to @post, notice: "The image has been deleted."
  end
end