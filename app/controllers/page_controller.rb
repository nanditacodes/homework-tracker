class PageController < ApplicationController
  before_action :filter_assignments
  def show
    user_id = session[:user_id]
    @user = User.find_by_id(user_id)
  end

  def filter_assignments
    @assignments = Assignment.current
  end

end
