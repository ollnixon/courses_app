class ModifyBookingsToBelongToUser < ActiveRecord::Migration
  def change
    remove_column :bookings, :name
    remove_column :bookings, :email
    add_column :bookings, :user_id, :integer
    add_index :bookings, :user_id
  end
end
