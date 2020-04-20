class ListservsController < ApplicationController
  before_action :set_listserv, only: [:show, :edit, :update, :destroy]

  # GET /listservs
  # GET /listservs.json
  def index
    @listservs = Listserv.all
  end

  # GET /listservs/1
  # GET /listservs/1.json
  def show
  end

  # GET /listservs/new
  def new
    @listserv = Listserv.new
  end

  # GET /listservs/1/edit
  def edit
  end

  # POST /listservs
  # POST /listservs.json
  def create
    @listserv = Listserv.new(listserv_params)

    respond_to do |format|
      if @listserv.save
        format.html { redirect_back fallback_location: root_path, notice: 'Signed up for event notifications!' }
        format.json { render :show, status: :created, location: @listserv }
      else
        format.html { render :new }
        format.json { render json: @listserv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listservs/1
  # PATCH/PUT /listservs/1.json
  def update
    respond_to do |format|
      if @listserv.update(listserv_params)
        format.html { redirect_to @listserv, notice: 'Listserv was successfully updated.' }
        format.json { render :show, status: :ok, location: @listserv }
      else
        format.html { render :edit }
        format.json { render json: @listserv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listservs/1
  # DELETE /listservs/1.json
  def destroy
    @listserv.destroy
    respond_to do |format|
      format.html { redirect_to listservs_url, notice: 'Listserv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listserv
      @listserv = Listserv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def listserv_params
      params.require(:listserv).permit(:email)
    end
end
