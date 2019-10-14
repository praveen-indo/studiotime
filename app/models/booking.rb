class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  has_many :slots

  enum status: %I[requested declined confirmed]

  validates_presence_of :status, :street_address, :postal_code, :city,
                        :state, :country, :card_number, :expiry_month,
                        :expiry_year, :sub_total, :studio_time_fee

end
