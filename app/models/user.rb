class User < ActiveRecord::Base
  has_many :bookings
  has_many :courses, :through => :bookings

  validates :name, :presence => true, :length => { :minimum => 3 }
  validates :email, :presence => true, :uniqueness => true
  validates_as_email_address :email
  #validates_presence_of :name
end
