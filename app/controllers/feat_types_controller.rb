class FeatTypesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :build_feat_type, only: [:create]
  # before_action :set_feat_type, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /feat_types
  def index
  end

  # GET /feat_types/1
  def show
  end

  # GET /feat_types/new
  def new
  end

  # GET /feat_types/1/edit
  def edit
  end

  # POST /feat_types
  def create
    if @feat_type.save
      redirect_to @feat_type, notice: 'Feat type was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /feat_types/1
  def update
    if @feat_type.update(feat_type_params)
      redirect_to @feat_type, notice: 'Feat type was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /feat_types/1
  def destroy
    @feat_type.destroy
    redirect_to feat_types_url, notice: 'Feat type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feat_type
      @feat_type = FeatType.find(params[:id])
    end

    def build_feat_type
      @feat_type= FeatType.new(feat_type_params)
      # @feat_type.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def feat_type_params
      params.require(:feat_type).permit(:name, :desc)
    end
end
