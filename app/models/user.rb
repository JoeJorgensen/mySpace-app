# frozen_string_literal: true

class User < ActiveRecord::Base

  serialize :followed_friends, Array

def self.unfollowed_friends(ids)
 ids = ids.empty? ? [0] : ids
 Friend.where("id NOT IN (?)", ids).order("RANDOM()")
end

def self.followed(ids)
  ids = ids.empty? ? [0] : ids
  Friend.where("id IN (?)", ids)
end



  extend Devise::Models 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
