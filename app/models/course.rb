class Course < ActiveRecord::Base
  validates :name, :presence => true, :length => { :minimum => 6 }
  validates :description, :presence => true
  validates :price, :numericality => true, :allow_nil => true
end
