class ReviewsController < ApplicationController
  before_action :only => [:index, :edit, :destroy, :update, :show] do 
    redirect_to products_path unless current_user
    flash[:alert] = "You can not vist that page with out signing in/up first."
end
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :edit
  end

  def show
     @product = Product.find(params[:product_id])
     @review = Review.find(params[:id])
    render :show
  end

  def update
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to product_path(@review.product)
      else
        flash[:alert] = "There was problem updating this product, please check to see you filled the form out correctly."
        render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end

  private
    def review_params
      params.require(:review).permit(:author, :content_body, :rating)
    end

end