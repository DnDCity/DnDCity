class FeatsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :clean_params, only: [:create, :update]
  load_and_authorize_resource

  # GET /feats
  def index
  end

  # GET /feats/1
  def show
  end

  # GET /feats/new
  def new
  end

  # GET /feats/1/edit
  def edit
  end

  # POST /feats
  def create
    if @feat.save
      redirect_to @feat, notice: 'Feat was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /feats/1
  def update
    
    if @feat.update(feat_params)
      redirect_to @feat, notice: 'Feat was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /feats/1
  def destroy
    @feat.destroy
    redirect_to feats_url, notice: 'Feat was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def feat_params
      params.require(:feat).permit(:name, :desc, :feat_type_id, :modifiers,
                              :prerequisites, :benefit, prerequisite_feat_ids: [])
    end

    def clean_params
      params[:feat] = feat_params
    end
end
