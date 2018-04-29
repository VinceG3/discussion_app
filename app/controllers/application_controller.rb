class ApplicationController < ActionController::Base
  before_action :set_user

  private

  def set_user
    @user = User.find_by_id(session[:user_id]) || User.new
  end
end
