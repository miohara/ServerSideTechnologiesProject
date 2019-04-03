class GuitarcatsController < ApplicationController
  before_action :set_guitarcat, only: [:show, :edit, :update, :destroy]

  # GET /guitarcats
  # GET /guitarcats.json
  def index
    @guitarcats = Guitarcat.all
  end

  # GET /guitarcats/1
  # GET /guitarcats/1.json
  def show
  end

  # GET /guitarcats/new
  def new
    @guitarcat = Guitarcat.new
  end

  # GET /guitarcats/1/edit
  def edit
  end

  # POST /guitarcats
  # POST /guitarcats.json
  def create
    @guitarcat = Guitarcat.new(guitarcat_params)

    respond_to do |format|
      if @guitarcat.save
        format.html { redirect_to @guitarcat, notice: 'Guitarcat was successfully created.' }
        format.json { render :show, status: :created, location: @guitarcat }
      else
        format.html { render :new }
        format.json { render json: @guitarcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guitarcats/1
  # PATCH/PUT /guitarcats/1.json
  def update
    respond_to do |format|
      if @guitarcat.update(guitarcat_params)
        format.html { redirect_to @guitarcat, notice: 'Guitarcat was successfully updated.' }
        format.json { render :show, status: :ok, location: @guitarcat }
      else
        format.html { render :edit }
        format.json { render json: @guitarcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guitarcats/1
  # DELETE /guitarcats/1.json
  def destroy
    @guitarcat.destroy
    respond_to do |format|
      format.html { redirect_to guitarcats_url, notice: 'Guitarcat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guitarcat
      @guitarcat = Guitarcat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guitarcat_params
      params.require(:guitarcat).permit(:title, :description, :image)
    end
end
