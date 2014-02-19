class SpellLevelsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_spell_level, only: [:create]
  # before_action :set_spell_level, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /spell_levels
  def index
  end

  # GET /spell_levels/1
  def show
  end

  # GET /spell_levels/new
  def new
  end

  # GET /spell_levels/1/edit
  def edit
  end

  # POST /spell_levels
  def create
    if @spell_level.save
      redirect_to @spell_level, notice: 'Spell level was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /spell_levels/1
  def update
    if @spell_level.update(spell_level_params)
      redirect_to @spell_level, notice: 'Spell level was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /spell_levels/1
  def destroy
    @spell_level.destroy
    redirect_to spell_levels_url, notice: 'Spell level was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell_level
      @spell_level = SpellLevel.find(params[:id])
    end

    def build_spell_level
      @spell_level= SpellLevel.new(spell_level_params)
      # @spell_level.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def spell_level_params
      params.require(:spell_level).permit(:spell_id, :character_class_id, :level)
    end
end
