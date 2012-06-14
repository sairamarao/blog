class ReviewsController < ApplicationController
	def index
	@reviews = Review.all
	if current_user
		@reviews = Review.all
		render "index"
	  else
		redirect_to log_in_path, :notice=>"You must first login"
	  end
	end
	
	def show
	@review = Review.find(params[:id])
	end
	
	def new
	@review = Review.new
	end
	def create
	  @review = Review.new(params[:review])
	  
	  if @review.save 
		redirect_to reviews_path, :notice=>"Your review was saved"
	  else
		render "new"
	  end
	end
	
	def edit
	@review = Review.find(params[:id])
	end
	def update
	 @review = Review.find(params[:id])
	 
	 if @review.update_attributes(params[:review])
	 redirect_to reviews_path ,:notice => "Your review has been updated"
	 else
	 render "edit"
	 end
	end
	
	def destroy
	 @review = Review.find(params[:id])
	 @review.destroy
	 redirect_to reviews_path,notice=>"Your review has been deleted"
	end
end