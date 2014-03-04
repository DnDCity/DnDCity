class ClassLevelsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_class_level, only: [:create]
  # before_action :set_class_level, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource :character
  load_and_authorize_resource :class_level, through: :character

  # GET /class_levels
  def index
  end

  # GET /class_levels/1
  def show
  end

  # GET /class_levels/new
  def new
  end

  # GET /class_levels/1/edit
  def edit
  end

  # POST /class_levels
  def create
    if @class_level.save
      redirect_to @class_level, notice: 'Class level was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /class_levels/1
  def update
    if @class_level.update(class_level_params)
      redirect_to @class_level, notice: 'Class level was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /class_levels/1
  def destroy
    @class_level.destroy
    redirect_to class_levels_url, notice: 'Class level was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_level
      @class_level = ClassLevel.find(params[:id])
    end

    def build_class_level
      @class_level= ClassLevel.new(class_level_params)
      # @class_level.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def class_level_params
      params.require(:class_level).permit(:character_id, :character_class_id, :class_level)
    end
end
