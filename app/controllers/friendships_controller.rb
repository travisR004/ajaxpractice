class FriendshipsController < ApplicationController
  def create
    sleep(2)
    @friendship = current_user.friendships.create!(:in_friend_id => params[:user_id])
    head :ok
  end

  def destroy
    sleep(2)
    Friendship.find(params[:id]).destroy
    head :ok
  end
end
