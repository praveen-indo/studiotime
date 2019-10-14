class Studio < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :slots, through: :bookings
  has_and_belongs_to_many :studio_types
  has_many :images, as: :imageable

  validates_presence_of :name, :details, :address, :latitude, :longitude,
                        :price_per_hour, :opening_time, :closing_time

  def vacant_slots?(from, to)
    # logic to check if there are any vacant slots
  end
end
