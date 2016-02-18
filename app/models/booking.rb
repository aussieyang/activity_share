class Booking < ActiveRecord::Base

  belongs_to :user
  belongs_to :activity

  validates :activity, uniqueness: { scope: :user }
  validates :user, uniqueness: { scope: :activity }
  
end
