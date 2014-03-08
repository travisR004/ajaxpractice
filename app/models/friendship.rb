class Friendship < ActiveRecord::Base
  validates :out_friend_id, :in_friend_id, :presence => true
  validates :out_friend_id, :uniqueness => {:scope => :in_friend_id}

  belongs_to :out_friend, class_name: "User"
  belongs_to :in_friend, class_name: "User"
end
