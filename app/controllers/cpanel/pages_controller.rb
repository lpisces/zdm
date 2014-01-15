class Cpanel::PagesController < CpanelController
  before_action :set_cpanel_page, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/pages
  # GET /cpanel/pages.json
  def index
    @cpanel_pages = Cpanel::Page.all
  end

  # GET /cpanel/pages/1
  # GET /cpanel/pages/1.json
  def show
  end

  # GET /cpanel/pages/new
  def new
    @cpanel_page = Cpanel::Page.new
  end

  # GET /cpanel/pages/1/edit
  def edit
  end

  # POST /cpanel/pages
  # POST /cpanel/pages.json
  def create
    @cpanel_page = Cpanel::Page.new(cpanel_page_params)

    respond_to do |format|
      if @cpanel_page.save
        format.html { redirect_to @cpanel_page, notice: 'Page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/pages/1
  # PATCH/PUT /cpanel/pages/1.json
  def update
    respond_to do |format|
      if @cpanel_page.update(cpanel_page_params)
        format.html { redirect_to @cpanel_page, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/pages/1
  # DELETE /cpanel/pages/1.json
  def destroy
    @cpanel_page.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_page
      @cpanel_page = Cpanel::Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_page_params
      params.require(:cpanel_page).permit(:name, :content)
    end
end
