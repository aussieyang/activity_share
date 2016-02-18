class Admin::DashboardController < ApplicationController
  layout 'dashboard'
  
  def index
    @user = current_user
  end

end
