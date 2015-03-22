class Reservation < ActiveRecord::Base
	attr_accessible :additional_info, :address, :arrival_date, :city, 
  								:contact, :departure_date, :email, :no_adults, :no_children, 
  								:phone, :state, :status, :id

	has_many :guests

	accepts_nested_attributes_for :guests

  validates :contact, presence: true
	validates :address, presence: true
	validates :email, presence: true, uniqueness: true
	validates :phone, presence: true
	validates :arrival_date, presence: true
	validates :departure_date, presence: true


end
