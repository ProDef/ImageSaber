class PhotosController < ApplicationController

	def new
	end

	def create
		Photo.create(params[:photo].permit(:title, :image, :tag_names))
  
      	flash[:notice] = 'Photo added'
      	redirect_to photos_path
	end

	def index
		@photos = Photo.all
	end

	# def show
 #  		@photos = Photo.find(params[:id])
	# end

	







	private

  	def photos_params
    params.require(:photos).permit(:title, :text)
  	end

end
