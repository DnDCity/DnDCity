class RacesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :build_race, only: [:create]
  # before_action :set_race, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource # see cancan

  # GET /races
  def index
    # @races = Race.all
  end

  # GET /races/1
  def show
  end

  # GET /races/new
  def new
  end

  # GET /races/1/edit
  def edit
  end

  # POST /races
  def create
    if @race.save
      redirect_to @race, notice: 'Race was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /races/1
  def update
    if @race.update(race_params)
      redirect_to @race, notice: 'Race was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /races/1
  def destroy
    @race.destroy
    redirect_to races_url, notice: 'Race was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    def build_race
      @race= Race.new(race_params)
      # @race.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def race_params
      params.require(:race).permit(:name, :desc, :speed, :str, :dex, :con, :int, :wis, :cha, :bonus_feat, :bonus_skill_points, :bonus_skill_points_per_level, :size_id)
    end
end
