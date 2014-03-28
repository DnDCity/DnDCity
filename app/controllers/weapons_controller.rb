class WeaponsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_weapon, only: [:create]
  # before_action :set_weapon, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /weapons
  def index
  end

  # GET /weapons/1
  def show
  end

  # GET /weapons/new
  def new
  end

  # GET /weapons/1/edit
  def edit
  end

  # POST /weapons
  def create
    if @weapon.save
      redirect_to @weapon, notice: 'Weapon was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /weapons/1
  def update
    if @weapon.update(weapon_params)
      redirect_to @weapon, notice: 'Weapon was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /weapons/1
  def destroy
    @weapon.destroy
    redirect_to weapons_url, notice: 'Weapon was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    def build_weapon
      @weapon= Weapon.new(weapon_params)
      # @weapon.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def weapon_params
      params.require(:weapon).permit(:name, :desc, :user_id, :damages, :damagem, :critical, :rangeincrement, :weight, :isthrowable, :islight, :isonehanded, :istwohanded, :type)
    end
end
