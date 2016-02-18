class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def count
    bookings.count
  end

  geocoded_by :location
  after_validation :geocode
end
