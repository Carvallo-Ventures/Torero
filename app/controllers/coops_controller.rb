class CoopsController < ApplicationController
  before_action :set_coop, only: [:show, :edit, :update, :destroy]
  before_action :set_rotation
  # GET /coops
  # GET /coops.json
  def index
    @coops = Coop.all
  end

  # GET /coops/1
  # GET /coops/1.json
  def show
  end

  # GET /coops/new
  def new
    @coop = Coop.new
  end

  # GET /coops/1/edit
  def edit
  end

  # POST /coops
  # POST /coops.json
  def create
    @coop = @rotation.coops.create(coop_params)
    @coop.rotation_id= @rotation.id
    
    respond_to do |format|
      if @coop.save
        format.html { redirect_to @rotation, notice: 'Coop was successfully created.' }
        format.json { render :show, status: :created, location: @rotation }
      else
        format.html { render :new }
        format.json { render json: @rotation.errors, status: :unprocessable_entity }
      end
    end

    @coop.send_notifications!(@rotation)
  end

  # PATCH/PUT /coops/1
  # PATCH/PUT /coops/1.json
  def update
    respond_to do |format|
      if @coop.update(coop_params)
        format.html { redirect_to @rotation, notice: 'Coop was successfully updated.' }
        format.json { render :show, status: :ok, location: @rotation }
      else
        format.html { render :edit }
        format.json { render json: @rotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coops/1
  # DELETE /coops/1.json
  def destroy
     @coop.destroy
    respond_to do |format|
      format.html { redirect_to @rotation, notice: 'Coop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    def set_rotation
  @rotation=Rotation.find(params[:rotation_id])
  end

    def set_coop
      @coop = Coop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coop_params
      params.require(:coop).permit(:name, :email)
    end
end
