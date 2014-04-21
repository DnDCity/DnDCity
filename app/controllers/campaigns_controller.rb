class CampaignsController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_campaign, only: [:create]
  # before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  before_action :load_campaigns, only: :index
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

    def load_campaigns
      @campaigns = current_user.campaigns
      @public_campaigns = Campaign.where("public = ? and user_id != ?", true, current_user.id)
      @invitations = Campaign.with_role(:invited, current_user)
      @members = Campaign.with_role(:member, current_user)
    end

    def build_campaign
      @campaign= Campaign.new(campaign_params)
      @campaign.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def campaign_params
      params.require(:campaign).permit(:name,:desc,:open,:public)
    end
end
