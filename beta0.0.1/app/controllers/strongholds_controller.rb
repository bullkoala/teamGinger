class StrongholdsController < ApplicationController
  before_action :set_stronghold, only: [:show, :edit, :update, :destroy]

  # GET /strongholds
  # GET /strongholds.json
  def index
    @strongholds = Stronghold.all
  end

  # GET /strongholds/1
  # GET /strongholds/1.json
  def show
  end

  # GET /strongholds/new
  def new
    @stronghold = Stronghold.new
  end

  # GET /strongholds/1/edit
  def edit
  end

  # POST /strongholds
  # POST /strongholds.json
  def create
    @stronghold = Stronghold.new(stronghold_params)

    respond_to do |format|
      if @stronghold.save
        format.html { redirect_to @stronghold, notice: 'Stronghold was successfully created.' }
        format.json { render :show, status: :created, location: @stronghold }
      else
        format.html { render :new }
        format.json { render json: @stronghold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strongholds/1
  # PATCH/PUT /strongholds/1.json
  def update
    respond_to do |format|
      if @stronghold.update(stronghold_params)
        format.html { redirect_to @stronghold, notice: 'Stronghold was successfully updated.' }
        format.json { render :show, status: :ok, location: @stronghold }
      else
        format.html { render :edit }
        format.json { render json: @stronghold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strongholds/1
  # DELETE /strongholds/1.json
  def destroy
    @stronghold.destroy
    respond_to do |format|
      format.html { redirect_to strongholds_url, notice: 'Stronghold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def index
    if params[:search]
      @strongholds = Stronghold.search(params[:search]).order('title DESC')
    else
      @strongholds = Stronghold.all.order('title DESC')
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stronghold
      @stronghold = Stronghold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stronghold_params
      params.require(:stronghold).permit(:typeID, :provinceStrength, :familyHonor, :goldProduction, :keywords, :description, :clan)
    end
end
