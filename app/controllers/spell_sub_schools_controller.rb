class SpellSubSchoolsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_spell_sub_school, only: [:create]
  # before_action :set_spell_sub_school, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /spell_sub_schools
  def index
  end

  # GET /spell_sub_schools/1
  def show
  end

  # GET /spell_sub_schools/new
  def new
  end

  # GET /spell_sub_schools/1/edit
  def edit
  end

  # POST /spell_sub_schools
  def create
    if @spell_sub_school.save
      redirect_to @spell_sub_school, notice: 'Spell sub school was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /spell_sub_schools/1
  def update
    if @spell_sub_school.update(spell_sub_school_params)
      redirect_to @spell_sub_school, notice: 'Spell sub school was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /spell_sub_schools/1
  def destroy
    @spell_sub_school.destroy
    redirect_to spell_sub_schools_url, notice: 'Spell sub school was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell_sub_school
      @spell_sub_school = SpellSubSchool.find(params[:id])
    end

    def build_spell_sub_school
      @spell_sub_school= SpellSubSchool.new(spell_sub_school_params)
      # @spell_sub_school.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def spell_sub_school_params
      params.require(:spell_sub_school).permit(:name, :desc, :spell_school_id)
    end
end
