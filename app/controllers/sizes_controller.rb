class SizesController < ApplicationController
  before_filter :authenticate_user!
  before_action :build_size, only: [:create]
  # before_action :set_size, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /sizes
  def index
  end

  # GET /sizes/1
  def show
  end

  # GET /sizes/new
  def new
  end

  # GET /sizes/1/edit
  def edit
  end

  # POST /sizes
  def create
    if @size.save
      redirect_to @size, notice: 'Size was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /sizes/1
  def update
    if @size.update(size_params)
      redirect_to @size, notice: 'Size was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /sizes/1
  def destroy
    @size.destroy
    redirect_to sizes_url, notice: 'Size was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_size
      @size = Size.find(params[:id])
    end

    def build_size
      @size= Size.new(size_params)
      # @size.user = current_user # use if owned resource
    end

    # Only allow a trusted parameter "white list" through.
    def size_params
      params.require(:size).permit(:name, :desc)
    end
end
