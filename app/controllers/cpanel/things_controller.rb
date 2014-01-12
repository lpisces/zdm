class Cpanel::ThingsController < CpanelController
  before_action :set_cpanel_thing, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/things
  # GET /cpanel/things.json
  def index
    @cpanel_things = Cpanel::Thing.all
  end

  # GET /cpanel/things/1
  # GET /cpanel/things/1.json
  def show
  end

  # GET /cpanel/things/new
  def new
    @cpanel_thing = Cpanel::Thing.new
  end

  # GET /cpanel/things/1/edit
  def edit
  end

  # POST /cpanel/things
  # POST /cpanel/things.json
  def create
    @cpanel_thing = Cpanel::Thing.new(cpanel_thing_params)

    respond_to do |format|
      if @cpanel_thing.save
        format.html { redirect_to @cpanel_thing, notice: 'Thing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_thing }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/things/1
  # PATCH/PUT /cpanel/things/1.json
  def update
    respond_to do |format|
      if @cpanel_thing.update(cpanel_thing_params)
        format.html { redirect_to @cpanel_thing, notice: 'Thing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/things/1
  # DELETE /cpanel/things/1.json
  def destroy
    @cpanel_thing.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_things_url }
      format.json { head :no_content }
    end
  end

  def attachment
    params.permit!
    @att = Cpanel::Attachment.new
    @att.name = params[:attachment].original_filename
    @att.file = params[:attachment]
    @att.save
    render :json => @att
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_thing
      @cpanel_thing = Cpanel::Thing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_thing_params
      params.require(:cpanel_thing).permit(:title, :price, :coupon_price, :master_pic_url, :sub_pic_url, :click_url, :node_id, :summary, :content, :sub_title, :mall_id)
    end
end
