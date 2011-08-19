class Course < ActiveRecord::Base
  has_many :bookings
  has_many :attendees, :through => :bookings, :source => :user
  
  validates :name, :presence => true, :length => { :minimum => 6 }
  validates :description, :presence => true
  validates :price, :numericality => true, :allow_nil => true

  scope :current, lambda { where("start_date >= ?", Date.today) }
end
