class AddFollowedFriendsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :followed_friends, :text
  end
end
