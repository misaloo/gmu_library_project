class Reservation < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  def reserve_check?
    total_available = self.total_in_library - self.reservations.size
    total_available > 0
  end

end
