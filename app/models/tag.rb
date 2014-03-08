class Tag < ActiveRecord::Base
  validates :content, presence: true

  has_many :secret_taggings
  has_many :secrets, through: :secret_taggings
end
