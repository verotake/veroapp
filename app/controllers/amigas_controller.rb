class AmigasController < ApplicationController
  before_action :set_amiga, only: [:show, :edit, :update, :destroy]

  # GET /amigas
  # GET /amigas.json
  def index
    @amigas = Amiga.all
  end

  # GET /amigas/1
  # GET /amigas/1.json
  def show
  end

  # GET /amigas/new
  def new
    @amiga = Amiga.new
  end

  # GET /amigas/1/edit
  def edit
  end

  # POST /amigas
  # POST /amigas.json
  def create
    @amiga = Amiga.new(amiga_params)

    respond_to do |format|
      if @amiga.save
        format.html { redirect_to @amiga, notice: 'Amiga was successfully created.' }
        format.json { render :show, status: :created, location: @amiga }
      else
        format.html { render :new }
        format.json { render json: @amiga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amigas/1
  # PATCH/PUT /amigas/1.json
  def update
    respond_to do |format|
      if @amiga.update(amiga_params)
        format.html { redirect_to @amiga, notice: 'Amiga was successfully updated.' }
        format.json { render :show, status: :ok, location: @amiga }
      else
        format.html { render :edit }
        format.json { render json: @amiga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amigas/1
  # DELETE /amigas/1.json
  def destroy
    @amiga.destroy
    respond_to do |format|
      format.html { redirect_to amigas_url, notice: 'Amiga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amiga
      @amiga = Amiga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amiga_params
      params.require(:amiga).permit(:name, :description, :picture)
    end
end
