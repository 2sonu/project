class CategoriesController < ApplicationController
  def show 
      @category = Category.find(params[:id])
      @reviews = @category.reviews
  end
  def new
  	  @restaurant = Restaurant.find(params[:restaurant_id])
      @category = Category.new
  end
  def create
  	  @restaurant = Restaurant.find(params[:restaurant_id])
      @category = @restaurant.categories.create(category_params)
      redirect_to restaurant_path(@restaurant)
  end
  def edit 
      @restaurant = Restaurant.find(params[:restaurant_id])
      @category = @restaurant.categories.find(params[:id])
  end 
  def update
      @restaurant = Restaurant.find(params[:restaurant_id])
      @category = @restaurant.categories.update(category_params)
      redirect_to restaurant_path(@restaurant) 
  end       
  def destroy
      @restaurant = Restaurant.find(params[:restaurant_id])
      @category = @restaurant.categories.find(params[:id])
      @category.destroy
      redirect_to restaurant_path(@restaurant)
  end


  private
    def category_params
      params.require(:category).permit(:name)
    end
end
