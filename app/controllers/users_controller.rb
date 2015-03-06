require 'gravatar'
class UsersController < ApplicationController
  before_filter :authenticate_user!
  def show
    @user = User.find(current_user.id)
    @gravatar_url = Gravatar.new.url(@user)
    @new_list = List.new()
  end
end