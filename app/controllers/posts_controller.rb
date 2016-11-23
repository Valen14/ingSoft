class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :not_done, :done]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show

  end

  # GET /posts/new
  def new
    @post = Post.new
    @postulation = Postulation.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user = current_user
    point = current_user.point - 1 
    User.find(current_user.id).update(point: point )
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Gauchada creada.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Gauchada editada.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def done
    @post.update(done: true )
    @user = User.find(@post.user_elect_id)
    @point = @user.point + 1
    @user.update(point: @point )
    flash[:notice] = 'Gauchada resuelta.'
    redirect_to @post
  end

  def not_done
    @post.update(done: false )
    @user = User.find(@post.user_elect_id)
    @point = @user.point - 2
    @user.update(point: @point )
    flash[:notice] = 'Gauchada no resuelta.'
    redirect_to @post
  end

    def search
  #    @posts = Post.all

  #    @search = @search.where(title: params[:title]) unless params[:title] == ''
  #    @search = @search.where(city_id: params[:city_id]) unless params[:city_id] == ''
  #    @search = @search.where(ciudad: params[:create_at]) unless params[:create_at] == ''
    if !params[:title].present? and !params[:city_id].present? and !params[:create_at].present?
      flash[:notice] = 'no ingresaste ningun filtro de busqueda'
    else
      @search = Post.all
      if params[:title].present?
        @search = @search.where("title ILIKE ?", "%#{params[:title]}%")
      end
      if params[:city_id].present?
        @search = @search.where("city_id = ?", params[:city_id])
      end
      if params[:create_at].present?
        @search = @search.where("created_at = ?", params[:created_at])
      end
    end
  end


  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Gauchada eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit( :city_id, :title, :description ,:photo_url)
    end
end
