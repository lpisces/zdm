class ThingController < ApplicationController
  def show
    @thing = Thing.where('title = ?', params[:title]).first
    @node = @thing.try(:node)
    @section = @node.try(:section)
    @ad_thing_right_bottom = Ad.where('position = ?', 'thing_right_bottom').first
  end
end
