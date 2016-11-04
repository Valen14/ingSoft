class AchievementsController < ApplicationController
  before_action :set_achievement, only: [:show, :edit, :update, :destroy]

  # GET /achievements
  # GET /achievements.json
  def index
    @achievements = Achievement.all
  end

  # GET /achievements/1
  # GET /achievements/1.json
  def show
  end

  # GET /achievements/new
  def new
    @achievement = Achievement.new
  end

  # GET /achievements/1/edit
  def edit
  end

  # POST /achievements
  # POST /achievements.json
  def create
    @achievement = Achievement.new(achievement_params)


      if nosuperpuse()
        respond_to do |format|
        if @achievement.save
          format.html { redirect_to @achievement, notice: 'Achievement was successfully created.' }
          format.json { render :show, status: :created, location: @achievement }
        else
          format.html { render :new }
          format.json { render json: @achievement.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /achievements/1
  # PATCH/PUT /achievements/1.json
  def update
    respond_to do |format|
      if @achievement.update(achievement_params)
        format.html { redirect_to @achievement, notice: 'Achievement was successfully updated.' }
        format.json { render :show, status: :ok, location: @achievement }
      else
        format.html { render :edit }
        format.json { render json: @achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achievements/1
  # DELETE /achievements/1.json
  def destroy
    @achievement.destroy
    respond_to do |format|
      format.html { redirect_to achievements_url, notice: 'Achievement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achievement
      @achievement = Achievement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def achievement_params
      params.require(:achievement).permit(:name, :point_min, :point_max)
    end

    private
    def nosuperpuse()
      @nosuperpuse = true
      Achievement.all.each do |c|
       #3 casos. 1  todo intervalo adentro , 2 solo el min, 3 solo el max
       if (((@achievement.point_min >= c.point_min) and (@achievement.point_max <= c.point_max))or
          ((@achievement.point_min >= c.point_min) and (@achievement.point_min <= c.point_max))or
          ((@achievement.point_max >= c.point_min) and (@achievement.point_max <= c.point_max)))
          @nosuperpuse = false
        end
      end
      return @nosuperpuse
    end
end
