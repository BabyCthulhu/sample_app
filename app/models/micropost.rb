class Micropost < ActiveRecord::Base
  belongs_to :user

  attr_accessible :content
  validates :user_id, presence: true
end
