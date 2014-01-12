class HomeController < ApplicationController
  def index
    @sidebar = true
    @things = Thing.limit(10).order('id desc')
    @malls = Mall.limit(15).order('id desc')
  end
end
