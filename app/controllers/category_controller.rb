class CategoriesController < ApplicationController
  def index
  end

# post
  def create
  	@category = Category.create(params.require(:name, :min_point, :max_point))
  	#redirect_to(category_path)
  end
# put
  def update
  end

  def destroy
  end

  def new
  	@category = Category.new
  end

end
