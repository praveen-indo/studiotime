class User < ApplicationRecord
  has_secure_password

  has_many :studios
  has_many :verifications
  has_one  :image, as: :imageable

  validates_presence_of :first_name, :last_name, :email, :mobile
  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/

  def verified?
    email_verified && mobile_verified
  end
end
