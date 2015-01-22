class OrginizationsController < ApplicationController
  before_action :set_orginization, only: [:show, :edit, :update, :destroy]

  # GET /orginizations
  # GET /orginizations.json
  def index
    @orginizations = Orginization.all
  end

  # GET /orginizations/1
  # GET /orginizations/1.json
  def show
  end

  # GET /orginizations/new
  def new
    @orginization = Orginization.new
  end

  # GET /orginizations/1/edit
  def edit
  end

  # POST /orginizations
  # POST /orginizations.json
  def create
    @orginization = Orginization.new(orginization_params)

    respond_to do |format|
      if @orginization.save
        format.html { redirect_to @orginization, notice: 'Orginization was successfully created.' }
        format.json { render :show, status: :created, location: @orginization }
      else
        format.html { render :new }
        format.json { render json: @orginization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orginizations/1
  # PATCH/PUT /orginizations/1.json
  def update
    respond_to do |format|
      if @orginization.update(orginization_params)
        format.html { redirect_to @orginization, notice: 'Orginization was successfully updated.' }
        format.json { render :show, status: :ok, location: @orginization }
      else
        format.html { render :edit }
        format.json { render json: @orginization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orginizations/1
  # DELETE /orginizations/1.json
  def destroy
    @orginization.destroy
    respond_to do |format|
      format.html { redirect_to orginizations_url, notice: 'Orginization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orginization
      @orginization = Orginization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orginization_params
      params.require(:orginization).permit(:name, :number_of_employees)
    end
end
