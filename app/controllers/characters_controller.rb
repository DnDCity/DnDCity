class CharactersController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_character, only: [:create]
  # before_action :set_character, only: [:update]
  load_and_authorize_resource through: :current_user

  # GET /characters
  # GET /characters.json
  def index
    # @characters = Character.where(user_id: current_user.id)
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    # @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    # @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render action: 'show', status: :created, location: @character }
      else
        format.html { render action: 'new' }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    def build_character
      @character = Character.new(character_params)
      @character.user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :race_id, :size_id, :gender,
        :alignment, :religion, :height, :weight, :age, :looks, :desc,
        :base_str, :base_dex, :base_con, :base_int, :base_wis, :base_cha,
        :temp_str, :temp_dex, :temp_con, :temp_int, :temp_wis, :temp_cha,
        :current_hp, :public, :base_hp)
    end
end
