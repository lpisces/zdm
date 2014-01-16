class HomeController < ApplicationController
  def index
    @sidebar = true
    @malls = Mall.where('logo_url != ""').limit(15).order('id desc')
    @ad_home_right_bottom = Ad.where('position = ?', 'home_right_bottom').first
    @ad_home_left_bottom = Ad.where('position = ?', 'home_left_bottom').first
    @stat_code = Ad.where('position = ?', 'stat_code').first
    @promotions = Promotion.limit(10).order('id desc')
    @things = Thing.paginate(:page => params[:page], :per_page => 10).order('id desc')
  end
end
