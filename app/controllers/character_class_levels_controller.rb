class CharacterClassLevelsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_character_class_level, only: [:create]
  # before_action :set_character_class_level, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /character_class_levels
  def index
  end

  # GET /character_class_levels/1
  def show
  end

  # GET /character_class_levels/new
  def new
  end

  # GET /character_class_levels/1/edit
  def edit
  end

  # POST /character_class_levels
  def create
    if @character_class_level.save
      redirect_to @character_class_level, notice: 'Character class level was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /character_class_levels/1
  def update
    if @character_class_level.update(character_class_level_params)
      redirect_to @character_class_level, notice: 'Character class level was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /character_class_levels/1
  def destroy
    @character_class_level.destroy
    redirect_to character_class_levels_url, notice: 'Character class level was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_class_level
      @character_class_level = CharacterClassLevel.find(params[:id])
    end

    def build_character_class_level
      @character_class_level= CharacterClassLevel.new(character_class_level_params)
      # @character_class_level.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def character_class_level_params
      params.require(:character_class_level).permit(:character_id, :character_class_id, :class_level)
    end
end
