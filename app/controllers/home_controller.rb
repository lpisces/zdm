class HomeController < ApplicationController
  def index
    @sidebar = true
    @things = Thing.limit(10).order('id desc')
    @malls = Mall.where('logo_url != ""').limit(15).order('id desc')
    @ad_home_right_bottom = Ad.where('position = ?', 'home_right_bottom').first
  end
end
