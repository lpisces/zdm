class CpanelController < ApplicationController

  before_filter :admin_required?

  def admin_required?
    redirect_to new_user_session_path unless current_user.try(:admin?)
  end
end
