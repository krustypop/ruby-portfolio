class ImageDescriptionsController < ApplicationController
  before_action :set_image_description, only: [:show, :edit, :update, :destroy]

  # GET /image_descriptions
  # GET /image_descriptions.json
  def index
    @image_descriptions = ImageDescription.all
  end

  # GET /image_descriptions/1
  # GET /image_descriptions/1.json
  def show
  end

  # GET /image_descriptions/new
  def new
    @image_description = ImageDescription.new
  end

  # GET /image_descriptions/1/edit
  def edit
  end

  # POST /image_descriptions
  # POST /image_descriptions.json
  def create
    @image_description = ImageDescription.new(image_description_params)

    respond_to do |format|
      if @image_description.save
        format.html { redirect_to @image_description, notice: 'Image description was successfully created.' }
        format.json { render :show, status: :created, location: @image_description }
      else
        format.html { render :new }
        format.json { render json: @image_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_descriptions/1
  # PATCH/PUT /image_descriptions/1.json
  def update
    respond_to do |format|
      if @image_description.update(image_description_params)
        format.html { redirect_to @image_description, notice: 'Image description was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_description }
      else
        format.html { render :edit }
        format.json { render json: @image_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_descriptions/1
  # DELETE /image_descriptions/1.json
  def destroy
    @image_description.destroy
    respond_to do |format|
      format.html { redirect_to image_descriptions_url, notice: 'Image description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_description
      @image_description = ImageDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_description_params
      params.require(:image_description).permit(:title, :description, :width, :height)
    end
end
