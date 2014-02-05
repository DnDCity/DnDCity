class CampaignsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_campaign, only: [:create]
  # before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /campaigns
  def index
  end

  # GET /campaigns/1
  def show
  end

  # GET /campaigns/new
  def new
  end

  # GET /campaigns/1/edit
  def edit
  end

  # POST /campaigns
  def create
    if @campaign.save
      redirect_to @campaign, notice: 'Campaign was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /campaigns/1
  def update
    if @campaign.update(campaign_params)
      redirect_to @campaign, notice: 'Campaign was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /campaigns/1
  def destroy
    @campaign.destroy
    redirect_to campaigns_url, notice: 'Campaign was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    def build_campaign
      @campaign= Campaign.new(campaign_params)
      @campaign.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def campaign_params
      params.require(:campaign).permit(:name)
    end
end
