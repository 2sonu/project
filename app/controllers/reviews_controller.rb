class ReviewsController < ApplicationController
	def create
  	  @category = Category.find(params[:category_id])
      @review = @category.reviews.create(review_params)
      redirect_to [@category.restaurant, @category]
  end
  private

    def review_params
      params.require(:review).permit(:comment)
  end
end

