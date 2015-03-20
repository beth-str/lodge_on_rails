class Reservation < ActiveRecord::Base
  has_many :guests
  attr_accessible :additional_info, :address, :arrival_date, :city, :contact, :departure_date, :email, :no_adults, :no_children, :phone, :state, :status
end
