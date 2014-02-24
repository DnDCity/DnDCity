class ClassSkillsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_class_skill, only: [:create]
  # before_action :set_class_skill, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /class_skills
  def index
  end

  # GET /class_skills/1
  def show
  end

  # GET /class_skills/new
  def new
  end

  # GET /class_skills/1/edit
  def edit
  end

  # POST /class_skills
  def create
    if @class_skill.save
      redirect_to @class_skill, notice: 'Class skill was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /class_skills/1
  def update
    if @class_skill.update(class_skill_params)
      redirect_to @class_skill, notice: 'Class skill was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /class_skills/1
  def destroy
    @class_skill.destroy
    redirect_to class_skills_url, notice: 'Class skill was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_skill
      @class_skill = ClassSkill.find(params[:id])
    end

    def build_class_skill
      @class_skill= ClassSkill.new(class_skill_params)
      # @class_skill.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def class_skill_params
      params.require(:class_skill).permit(:character_class_id, :skill_id, :subject)
    end
end
