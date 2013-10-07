class DetailsController < ApplicationController
  before_action :set_attribute, only: [:show, :edit, :update, :destroy]

  # GET /attributes
  # GET /attributes.json
  def index
    @details = Detail.all
  end

  # GET /attributes/1
  # GET /attributes/1.json
  def show
  end

  # GET /attributes/new
  def new
    @detail = Detail.new
  end

  # GET /attributes/1/edit
  def edit
  end

  # POST /attributes
  # POST /attributes.json
  def create
    @detail = Detail.new(attribute_params)

    respond_to do |format|
      if @detail.save
        format.html { redirect_to @detail, notice: 'Attribute was successfully created.' }
        format.json { render action: 'show', status: :created, location: @detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attributes/1
  # PATCH/PUT /attributes/1.json
  def update
    respond_to do |format|
      if @detail.update(attribute_params)
        format.html { redirect_to @detail, notice: 'Attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attributes/1
  # DELETE /attributes/1.json
  def destroy
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to attributes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute
      @detail = Detail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_params
      params.require(:detail).permit(:product_id, :title, :short_desc, :description, :picture, :price, :limit)
    end
end
