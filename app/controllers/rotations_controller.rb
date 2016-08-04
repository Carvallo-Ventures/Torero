class RotationsController < ApplicationController
  before_action :set_rotation, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!

  # GET /rotations
  # GET /rotations.json
  def index
    @rotations = current_user.rotations.all
  end

  # GET /rotations/1
  # GET /rotations/1.json
  def show
    @rotation=current_user.rotations.find(params[:id])
  end

  # GET /rotations/new
  def new
    @rotation = current_user.rotations.new
  end

  # GET /rotations/1/edit
  def edit
  end

  # POST /rotations
  # POST /rotations.json
  def create
    @rotation = current_user.rotations.new(rotation_params)

    respond_to do |format|
      if @rotation.save
        format.html { redirect_to @rotation, notice: 'Rotation was successfully created.' }
        format.json { render :show, status: :created, location: @rotation }
      else
        format.html { render :new }
        format.json { render json: @rotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rotations/1
  # PATCH/PUT /rotations/1.json
  def update
    respond_to do |format|
      if @rotation.update(rotation_params)
        format.html { redirect_to @rotation, notice: 'Rotation was successfully updated.' }
        format.json { render :show, status: :ok, location: @rotation }
      else
        format.html { render :edit }
        format.json { render json: @rotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rotations/1
  # DELETE /rotations/1.json
  def destroy
    @rotation.destroy
    respond_to do |format|
      format.html { redirect_to rotations_url, notice: 'Rotation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotation
      @rotation = Rotation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rotation_params
      params.require(:rotation).permit(:title, :description, :start_date, :end_date, :user_id)
    end
end
