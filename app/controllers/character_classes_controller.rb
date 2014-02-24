class CharacterClassesController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_character_class, only: [:create]
  # before_action :set_character_class, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource find_by: :key

  # GET /character_classes
  def index
    @base = []
    @npc = []
    @prestige = []
    @character_classes.each do |cc|
      case cc.class_type.downcase
      when 'base' then @base.push cc
      when 'npc' then @npc.push cc
      when 'prestige' then @prestige.push cc
      end
    end
  end

  # GET /character_classes/1
  def show
  end

  # GET /character_classes/new
  def new
  end

  # GET /character_classes/1/edit
  def edit
  end

  # POST /character_classes
  def create
    if @character_class.save
      redirect_to @character_class, notice: 'Character class was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /character_classes/1
  def update
    if @character_class.update(character_class_params)
      redirect_to @character_class, notice: 'Character class was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /character_classes/1
  def destroy
    @character_class.destroy
    redirect_to character_classes_url, notice: 'Character class was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_class
      @character_class = CharacterClass.find(params[:id])
    end

    def build_character_class
      @character_class= CharacterClass.new(character_class_params)
      # @character_class.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def character_class_params
      params.require(:character_class).permit(:name, :desc, :class_abilities, :hit_die, :base_attack_bonus, :base_fort_progression, :base_ref_progression, :base_will_progression, :skill_points_per_level)
    end
end
