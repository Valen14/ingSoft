class CategoriesController < ApplicationController
  def index
  end

# post
  def create
    @category = Category.new(category_params)
    if nosuperpuse()
    	if @category.save
  	    #flash[:success] = "creado!"
        redirect_to(categories_path)
      end
    else
      render 'new'
    end
  end
# put
  def update
    @category = Category.find(params[:id])
    #preguntar
    if nosuperpuse()
      if @category.update_attributes(category_params)
        #flash[:success] = "editado!"
        redirect_to(categories_path)
      end
    else
      #flash[:success] = "error!"
      render 'edit'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    # if user.category = @category.id
    # => baja logica @categori.sepuedeusar = false
    # else
    @category = Category.find(params[:id]).destroy
    #end
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

  private
  def nosuperpuse()
    @nosuperpuse = true
    Category.all.each do |c|
     #3 casos. 1  todo intervalo adentro , 2 solo el min, 3 solo el max
     if (((@category.min_point >= c.min_point) and (@category.max_point <= c.max_point))or
        ((@category.min_point >= c.min_point) and (@category.min_point <= c.max_point))or
        ((@category.max_point >= c.min_point) and (@category.max_point <= c.max_point)))
        @nosuperpuse = false
      end
    end
    return @nosuperpuse
  end
end
