class MineController < ApplicationController
  def index
    @user = current_user
    @user = current_user.reload
  end

  def mine
    current_user.increment!(:emeralds, 10)
    @user = current_user.reload
    respond_to do |format|
      format.turbo_stream
    end
  end
end
