class Cpanel::TagsController < CpanelController
  before_action :set_cpanel_tag, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/tags
  # GET /cpanel/tags.json
  def index
    @cpanel_tags = Cpanel::Tag.all
  end

  # GET /cpanel/tags/1
  # GET /cpanel/tags/1.json
  def show
  end

  # GET /cpanel/tags/new
  def new
    @cpanel_tag = Cpanel::Tag.new
  end

  # GET /cpanel/tags/1/edit
  def edit
  end

  # POST /cpanel/tags
  # POST /cpanel/tags.json
  def create
    @cpanel_tag = Cpanel::Tag.new(cpanel_tag_params)

    respond_to do |format|
      if @cpanel_tag.save
        format.html { redirect_to @cpanel_tag, notice: 'Tag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_tag }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/tags/1
  # PATCH/PUT /cpanel/tags/1.json
  def update
    respond_to do |format|
      if @cpanel_tag.update(cpanel_tag_params)
        format.html { redirect_to @cpanel_tag, notice: 'Tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/tags/1
  # DELETE /cpanel/tags/1.json
  def destroy
    @cpanel_tag.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_tags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_tag
      @cpanel_tag = Cpanel::Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_tag_params
      params.require(:cpanel_tag).permit(:name, :section_id)
    end
end
