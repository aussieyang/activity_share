class PagesController < ApplicationController
  layout 'splash'

    def home
      if logged_in?
        @user = current_user
        render :home
      else
        redirect_to '/login'
      end
    end

    def show_activities

    end

    def explore
      @activities = Activity.all
    end

end
