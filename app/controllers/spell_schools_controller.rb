class SpellSchoolsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_spell_school, only: [:create]
  # before_action :set_spell_school, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /spell_schools
  def index
  end

  # GET /spell_schools/1
  def show
  end

  # GET /spell_schools/new
  def new
  end

  # GET /spell_schools/1/edit
  def edit
  end

  # POST /spell_schools
  def create
    if @spell_school.save
      redirect_to @spell_school, notice: 'Spell school was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /spell_schools/1
  def update
    if @spell_school.update(spell_school_params)
      redirect_to @spell_school, notice: 'Spell school was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /spell_schools/1
  def destroy
    @spell_school.destroy
    redirect_to spell_schools_url, notice: 'Spell school was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell_school
      @spell_school = SpellSchool.find(params[:id])
    end

    def build_spell_school
      @spell_school= SpellSchool.new(spell_school_params)
      # @spell_school.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def spell_school_params
      params.require(:spell_school).permit(:name, :desc)
    end
end
