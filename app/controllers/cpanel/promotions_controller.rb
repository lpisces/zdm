class Cpanel::PromotionsController < CpanelController
  before_action :set_cpanel_promotion, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/promotions
  # GET /cpanel/promotions.json
  def index
    @cpanel_promotions = Cpanel::Promotion.all
  end

  # GET /cpanel/promotions/1
  # GET /cpanel/promotions/1.json
  def show
  end

  # GET /cpanel/promotions/new
  def new
    @cpanel_promotion = Cpanel::Promotion.new
  end

  # GET /cpanel/promotions/1/edit
  def edit
  end

  # POST /cpanel/promotions
  # POST /cpanel/promotions.json
  def create
    @cpanel_promotion = Cpanel::Promotion.new(cpanel_promotion_params)

    respond_to do |format|
      if @cpanel_promotion.save
        format.html { redirect_to @cpanel_promotion, notice: 'Promotion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_promotion }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/promotions/1
  # PATCH/PUT /cpanel/promotions/1.json
  def update
    respond_to do |format|
      if @cpanel_promotion.update(cpanel_promotion_params)
        format.html { redirect_to @cpanel_promotion, notice: 'Promotion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/promotions/1
  # DELETE /cpanel/promotions/1.json
  def destroy
    @cpanel_promotion.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_promotions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_promotion
      @cpanel_promotion = Cpanel::Promotion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_promotion_params
      params.require(:cpanel_promotion).permit(:title, :url, :mall_id, :content, :order)
    end
end
