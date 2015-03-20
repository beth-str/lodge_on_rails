class Reservation < ActiveRecord::Base
  has_many :guests
  attr_accessible :additional_info, :address, :arrival_date, :city, 
  								:contact, :departure_date, :email, :no_adults, :no_children, 
  								:phone, :state, :status

  validates :contact, presence: true
	validates :address, presence: true
	validates :arrival_date, presence: true
	validates :departure_date, presence: true


end
