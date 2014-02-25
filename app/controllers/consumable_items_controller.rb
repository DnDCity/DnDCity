class ConsumableItemsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_consumable_item, only: [:create]
  # before_action :set_consumable_item, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /consumable_items
  def index
  end

  # GET /consumable_items/1
  def show
  end

  # GET /consumable_items/new
  def new
  end

  # GET /consumable_items/1/edit
  def edit
  end

  # POST /consumable_items
  def create
    if @consumable_item.save
      redirect_to @consumable_item, notice: 'Consumable item was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /consumable_items/1
  def update
    if @consumable_item.update(consumable_item_params)
      redirect_to @consumable_item, notice: 'Consumable item was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /consumable_items/1
  def destroy
    @consumable_item.destroy
    redirect_to consumable_items_url, notice: 'Consumable item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumable_item
      @consumable_item = ConsumableItem.find(params[:id])
    end

    def build_consumable_item
      @consumable_item= ConsumableItem.new(consumable_item_params)
      # @consumable_item.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def consumable_item_params
      params.require(:consumable_item).permit(:name, :desc, :effects, :weight, :cost)
    end
end
