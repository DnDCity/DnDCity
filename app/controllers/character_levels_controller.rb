class CharacterLevelsController < ApplicationController
  before_action :set_character_level, only: [:show, :edit, :update, :destroy]

  # GET /character_levels
  # GET /character_levels.json
  def index
    @character_levels = CharacterLevel.all
  end

  # GET /character_levels/1
  # GET /character_levels/1.json
  def show
  end

  # GET /character_levels/new
  def new
    @character_level = CharacterLevel.new
  end

  # GET /character_levels/1/edit
  def edit
  end

  # POST /character_levels
  # POST /character_levels.json
  def create
    @character_level = CharacterLevel.new(character_level_params)

    respond_to do |format|
      if @character_level.save
        format.html { redirect_to @character_level, notice: 'Character level was successfully created.' }
        format.json { render action: 'show', status: :created, location: @character_level }
      else
        format.html { render action: 'new' }
        format.json { render json: @character_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_levels/1
  # PATCH/PUT /character_levels/1.json
  def update
    respond_to do |format|
      if @character_level.update(character_level_params)
        format.html { redirect_to @character_level, notice: 'Character level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @character_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_levels/1
  # DELETE /character_levels/1.json
  def destroy
    @character_level.destroy
    respond_to do |format|
      format.html { redirect_to character_levels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_level
      @character_level = CharacterLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_level_params
      params.require(:character_level).permit(:character, :level, :character_class_id, :class_level, :hp)
    end
end
