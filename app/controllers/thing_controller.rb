class ThingController < ApplicationController
  def show
    @thing = Thing.where('title = ?', params[:title]).first
    @node = @thing.try(:node)
    @section = @node.try(:section)
  end
end
