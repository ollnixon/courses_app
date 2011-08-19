class Booking < ActiveRecord::Base
  belongs_to :course
  belongs_to :user

  validates :course_id, :presence => true
  validates :user_id, :presence => true
end
