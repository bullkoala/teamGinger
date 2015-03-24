class MonkShugenjaAttachmentsController < ApplicationController
  before_action :set_monk_shugenja_attachment, only: [:show, :edit, :update, :destroy]

  # GET /monk_shugenja_attachments
  # GET /monk_shugenja_attachments.json
  def index
    @monk_shugenja_attachments = MonkShugenjaAttachment.all
  end

  # GET /monk_shugenja_attachments/1
  # GET /monk_shugenja_attachments/1.json
  def show
  end

  # GET /monk_shugenja_attachments/new
  def new
    @monk_shugenja_attachment = MonkShugenjaAttachment.new
  end

  # GET /monk_shugenja_attachments/1/edit
  def edit
  end

  # POST /monk_shugenja_attachments
  # POST /monk_shugenja_attachments.json
  def create
    @monk_shugenja_attachment = MonkShugenjaAttachment.new(monk_shugenja_attachment_params)

    respond_to do |format|
      if @monk_shugenja_attachment.save
        format.html { redirect_to @monk_shugenja_attachment, notice: 'Monk shugenja attachment was successfully created.' }
        format.json { render :show, status: :created, location: @monk_shugenja_attachment }
      else
        format.html { render :new }
        format.json { render json: @monk_shugenja_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monk_shugenja_attachments/1
  # PATCH/PUT /monk_shugenja_attachments/1.json
  def update
    respond_to do |format|
      if @monk_shugenja_attachment.update(monk_shugenja_attachment_params)
        format.html { redirect_to @monk_shugenja_attachment, notice: 'Monk shugenja attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @monk_shugenja_attachment }
      else
        format.html { render :edit }
        format.json { render json: @monk_shugenja_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monk_shugenja_attachments/1
  # DELETE /monk_shugenja_attachments/1.json
  def destroy
    @monk_shugenja_attachment.destroy
    respond_to do |format|
      format.html { redirect_to monk_shugenja_attachments_url, notice: 'Monk shugenja attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monk_shugenja_attachment
      @monk_shugenja_attachment = MonkShugenjaAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monk_shugenja_attachment_params
      params.require(:monk_shugenja_attachment).permit(:typeID, :goldCost, :keywords, :description, :focus)
    end
end
