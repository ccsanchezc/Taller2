class ConsultingTypesController < ApplicationController
  before_action :set_consulting_type, only: [:show, :edit, :update, :destroy]

  # GET /consulting_types
  # GET /consulting_types.json
  def index
    @consulting_types = ConsultingType.all
  end

  # GET /consulting_types/1
  # GET /consulting_types/1.json
  def show
  end

  # GET /consulting_types/new
  def new
    @consulting_type = ConsultingType.new
  end

  # GET /consulting_types/1/edit
  def edit
  end

  # POST /consulting_types
  # POST /consulting_types.json
  def create
    @consulting_type = ConsultingType.new(consulting_type_params)

    respond_to do |format|
      if @consulting_type.save
        format.html { redirect_to @consulting_type, notice: 'Consulting type was successfully created.' }
        format.json { render :show, status: :created, location: @consulting_type }
      else
        format.html { render :new }
        format.json { render json: @consulting_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulting_types/1
  # PATCH/PUT /consulting_types/1.json
  def update
    respond_to do |format|
      if @consulting_type.update(consulting_type_params)
        format.html { redirect_to @consulting_type, notice: 'Consulting type was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulting_type }
      else
        format.html { render :edit }
        format.json { render json: @consulting_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulting_types/1
  # DELETE /consulting_types/1.json
  def destroy
    @consulting_type.destroy
    respond_to do |format|
      format.html { redirect_to consulting_types_url, notice: 'Consulting type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulting_type
      @consulting_type = ConsultingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulting_type_params
      params.require(:consulting_type).permit(:name)
    end
end
