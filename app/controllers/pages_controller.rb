class PagesController < ApplicationController
  def about
    @page = Page.where('name = ?', 'about').first
  end

  def contact
    @page = Page.where('name = ?', 'contact').first
  end
end
