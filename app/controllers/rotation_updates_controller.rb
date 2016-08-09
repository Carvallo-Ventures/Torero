class RotationUpdatesController < ApplicationController
  before_action :set_rotation
  before_action :set_rotation_update, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :create, :destroy]
  # GET /rotation_updates
  # GET /rotation_updates.json
  def index
    @rotation_updates = RotationUpdate.all
  end

  # GET /rotation_updates/1
  # GET /rotation_updates/1.json
  def show
  end

  # GET /rotation_updates/new
  def new
    @rotation_update = @rotation.rotation_updates.new
  end

  # GET /rotation_updates/1/edit
  def edit
  end

  # POST /rotation_updates
  # POST /rotation_updates.json
  def create
    @rotation_update =@rotation.rotation_updates.create(rotation_update_params)
    @rotation_update.send_notifications!
    
    respond_to do |format|
      if @rotation_update.save
        format.html { redirect_to @rotation, notice: 'Rotation update was successfully created.' }
        format.json { render :show, status: :created, location: @rotation }
      else
        format.html { render :new }
        format.json { render json: @rotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rotation_updates/1
  # PATCH/PUT /rotation_updates/1.json
  def update
    respond_to do |format|
      if @rotation_update.update(rotation_update_params)
        format.html { redirect_to @rotation, notice: 'Rotation update was successfully updated.' }
        format.json { render :show, status: :ok, location: @rotation }
      else
        format.html { render :edit }
        format.json { render json: @rotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rotation_updates/1
  # DELETE /rotation_updates/1.json
  def destroy
    @rotation_update.destroy
    respond_to do |format|
      format.html { redirect_to @rotation, notice: 'Rotation update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotation_update
      @rotation_update = @rotation.rotation_updates.find(params[:id])
    end

    def set_rotation
      @rotation=Rotation.find(params[:rotation_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def rotation_update_params
      params.require(:rotation_update).permit(:title, :content, :references)
    end
end
