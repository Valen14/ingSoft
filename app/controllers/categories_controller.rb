class CategoriesController < ApplicationController
  def index
  end

# post
  def create
    @category = Category.new(category_params)
  	if @category.save
  	  flash[:success] = "creado!"
      redirect_to(categories_path)
    else
      render 'new'
    end
  end
# put
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:success] = "editado!"
      redirect_to(categories_path)
    else
      render 'edit'
    end
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

  private

    def category_params
      params.require(:category).permit(:name, :min_point, :max_point)
    end
end
