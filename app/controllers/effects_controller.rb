class EffectsController < ApplicationController
  before_action :set_effect, only: [:show, :edit, :update, :destroy]

  # GET /effects
  # GET /effects.json
  def index
    @effects = Effect.all
  end

  # GET /effects/1
  # GET /effects/1.json
  def show
  end

  # GET /effects/new
  def new
    @effect = Effect.new
  end

  # GET /effects/1/edit
  def edit
  end

  # POST /effects
  # POST /effects.json
  def create
    @effect = Effect.new(effect_params)

    respond_to do |format|
      if @effect.save
        format.html { redirect_to @effect, notice: 'Effect was successfully created.' }
        format.json { render action: 'show', status: :created, location: @effect }
      else
        format.html { render action: 'new' }
        format.json { render json: @effect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /effects/1
  # PATCH/PUT /effects/1.json
  def update
    respond_to do |format|
      if @effect.update(effect_params)
        format.html { redirect_to @effect, notice: 'Effect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @effect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /effects/1
  # DELETE /effects/1.json
  def destroy
    @effect.destroy
    respond_to do |format|
      format.html { redirect_to effects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_effect
      @effect = Effect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def effect_params
      params.require(:effect).permit(:name, :desc, :effects)
    end
end
