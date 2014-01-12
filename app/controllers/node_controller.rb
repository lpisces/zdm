class NodeController < ApplicationController
  def show
    @section = Section.where('name = ?', params[:section]).first
    @node = Node.where('name = ?', params[:node]).where('section_id = ?', @section.try('id')).first
    @sidebar = true
    @things = Thing.where('node_id = ?', @node.id).limit(10)
  end
end
