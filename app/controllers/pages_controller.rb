class PagesController < ApplicationController
  def splash_screen
    return unless current_user

    redirect_to groups_path
  end
end
