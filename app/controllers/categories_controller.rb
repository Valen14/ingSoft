class CategoriesController < ApplicationController
  def index
  end

# post
  def create
  	@category = Category.create(params.require(:category).permit(:name, :min_point, :max_point))
  	redirect_to(categories_path)
  end
# put
  def update
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id]).destroy
    redirect_to(categories_path)
  end

  def new
  	@category = Category.new
  end

  def show
  end
end
