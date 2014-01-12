class SectionController < ApplicationController
  def index
    @section = Section.where('name = ?', params[:name]).first
    @sidebar = true
    @things = Thing.where('node_id in (?)', @section.nodes.ids).limit(10)
  end

  def map
  end
end
