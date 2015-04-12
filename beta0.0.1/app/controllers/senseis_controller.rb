class SenseisController < ApplicationController
  #before_action :set_sensei, only: [:show, :edit, :update, :destroy]
  before_action :set_sensei, only: [:show]

  # GET /senseis
  # GET /senseis.json
  def index
    @senseis = Sensei.all
  end

  # GET /senseis/1
  # GET /senseis/1.json
  def show
  end

  # GET /senseis/new
  def new
    @sensei = Sensei.new
  end

  # GET /senseis/1/edit
  def edit
  end

  # POST /senseis
  # POST /senseis.json
  def create
    @sensei = Sensei.new(sensei_params)

    respond_to do |format|
      if @sensei.save
        format.html { redirect_to @sensei, notice: 'Sensei was successfully created.' }
        format.json { render :show, status: :created, location: @sensei }
      else
        format.html { render :new }
        format.json { render json: @sensei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /senseis/1
  # PATCH/PUT /senseis/1.json
  def update
    respond_to do |format|
      if @sensei.update(sensei_params)
        format.html { redirect_to @sensei, notice: 'Sensei was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensei }
      else
        format.html { render :edit }
        format.json { render json: @sensei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /senseis/1
  # DELETE /senseis/1.json
  def destroy
    @sensei.destroy
    respond_to do |format|
      format.html { redirect_to senseis_url, notice: 'Sensei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def index
    if params[:search]
      @senseis = Sensei.search(params[:search]).order('title DESC')
    else
      @senseis = Sensei.all.order('title DESC')
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensei
      @sensei = Sensei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensei_params
      params.require(:sensei).permit(:typeID, :provinceStrength, :goldProduction, :familyHonor, :keywords, :description)
    end
end
