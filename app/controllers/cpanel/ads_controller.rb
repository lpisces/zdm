class Cpanel::AdsController < CpanelController
  before_action :set_cpanel_ad, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/ads
  # GET /cpanel/ads.json
  def index
    @cpanel_ads = Cpanel::Ad.all
  end

  # GET /cpanel/ads/1
  # GET /cpanel/ads/1.json
  def show
  end

  # GET /cpanel/ads/new
  def new
    @cpanel_ad = Cpanel::Ad.new
  end

  # GET /cpanel/ads/1/edit
  def edit
  end

  # POST /cpanel/ads
  # POST /cpanel/ads.json
  def create
    @cpanel_ad = Cpanel::Ad.new(cpanel_ad_params)

    respond_to do |format|
      if @cpanel_ad.save
        format.html { redirect_to @cpanel_ad, notice: 'Ad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_ad }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/ads/1
  # PATCH/PUT /cpanel/ads/1.json
  def update
    respond_to do |format|
      if @cpanel_ad.update(cpanel_ad_params)
        format.html { redirect_to @cpanel_ad, notice: 'Ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/ads/1
  # DELETE /cpanel/ads/1.json
  def destroy
    @cpanel_ad.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_ads_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_ad
      @cpanel_ad = Cpanel::Ad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_ad_params
      params.require(:cpanel_ad).permit(:position, :height, :width, :code, :description, :is_displayed)
    end
end
