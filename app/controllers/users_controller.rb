class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])    # @comments = prptotype.id.comments
  end

end
