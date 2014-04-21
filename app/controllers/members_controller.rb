class MembersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :campaign
  
  def index
  end

  def show
  end

  def new
  end

  def create
    emails = params[:emails].split(/[\r\n\s,;]+/)
    @message = params[:message]
    emails.each do |email|
      user = User.invite!({:email => email}, current_user)
      user.add_role :invited, @campaign
    end
    flash[:notice] = "You have invited #{emails.join(', ')} to the campaign."
    redirect_to campaign_path(@campaign)
  end

  def accept
    if current_user.has_role? :invited, @campaign
      current_user.add_role :member, @campaign
      current_user.remove_role :invited, @campaign
      flash[:notice] = "You have accepted the invitation to the campaign #{@campaign}."
    end
    redirect_to campaign_path(@campaign)
  end
end
