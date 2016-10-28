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
  end

  def destroy
  end

  def new
  	@category = Category.new
  end

  def show
  end
end
