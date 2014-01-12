class Cpanel::MallsController < CpanelController
  before_action :set_cpanel_mall, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/malls
  # GET /cpanel/malls.json
  def index
    @cpanel_malls = Cpanel::Mall.all
  end

  # GET /cpanel/malls/1
  # GET /cpanel/malls/1.json
  def show
  end

  # GET /cpanel/malls/new
  def new
    @cpanel_mall = Cpanel::Mall.new
  end

  # GET /cpanel/malls/1/edit
  def edit
  end

  # POST /cpanel/malls
  # POST /cpanel/malls.json
  def create
    @cpanel_mall = Cpanel::Mall.new(cpanel_mall_params)

    respond_to do |format|
      if @cpanel_mall.save
        format.html { redirect_to @cpanel_mall, notice: 'Mall was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_mall }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_mall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/malls/1
  # PATCH/PUT /cpanel/malls/1.json
  def update
    respond_to do |format|
      if @cpanel_mall.update(cpanel_mall_params)
        format.html { redirect_to @cpanel_mall, notice: 'Mall was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_mall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/malls/1
  # DELETE /cpanel/malls/1.json
  def destroy
    @cpanel_mall.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_malls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_mall
      @cpanel_mall = Cpanel::Mall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_mall_params
      params.require(:cpanel_mall).permit(:name, :url, :logo_url, :mall_type)
    end
end
