class VideosController < ApplicationController
	def create
		@video = Video.new(video_params)
		@video.save
			redirect_to @video

	end

	def new
		@video = Video.new
		puts "NEW"
		puts @video.inspect
	end

	def edit
		@video = Video.find(params[:id])
		
	end

	def update

	end

	def index
		@allvideos = Video.all
		
	end

	def show
		@video = Video.find(params[:id])

	end

	def destroy
	@video = Video.find(params[:id])
  	@video.destroy
 
  	redirect_to videos_path

	end

	private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
	    def video_params
	      params.require(:video).permit(:title, :link)
	    end


end