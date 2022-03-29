class Api::FriendsController < ApplicationController
  before_action :authenticate_user! , except: [:everyone]


  def everyone
  render json:'All can see this.'
  end
    

  def index
    #get the current user and grab all of the friends who theyre not following.
    followed_friends_ids= current_user.followed_friends

    render json: User.unfollowed_friends(followed_friends_ids)
  end

  def update
    current_user.followed_friends.push(params[:id].to_i)
    current_user.save
  end
end
