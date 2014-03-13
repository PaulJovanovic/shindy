class User < ActiveRecord::Base
  validates :email, :full_name, presence: true
  validates :email, uniqueness: { message: "has already been taken" }
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "is not properly formatted"
end