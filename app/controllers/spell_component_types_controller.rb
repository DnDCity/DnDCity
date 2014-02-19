class SpellComponentTypesController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_spell_component_type, only: [:create]
  # before_action :set_spell_component_type, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /spell_component_types
  def index
  end

  # GET /spell_component_types/1
  def show
  end

  # GET /spell_component_types/new
  def new
  end

  # GET /spell_component_types/1/edit
  def edit
  end

  # POST /spell_component_types
  def create
    if @spell_component_type.save
      redirect_to @spell_component_type, notice: 'Spell component type was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /spell_component_types/1
  def update
    if @spell_component_type.update(spell_component_type_params)
      redirect_to @spell_component_type, notice: 'Spell component type was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /spell_component_types/1
  def destroy
    @spell_component_type.destroy
    redirect_to spell_component_types_url, notice: 'Spell component type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell_component_type
      @spell_component_type = SpellComponentType.find(params[:id])
    end

    def build_spell_component_type
      @spell_component_type= SpellComponentType.new(spell_component_type_params)
      # @spell_component_type.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def spell_component_type_params
      params.require(:spell_component_type).permit(:name, :key, :desc)
    end
end
