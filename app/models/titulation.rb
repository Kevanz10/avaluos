class Titulation < ActiveRecord::Base
	include AddressHash

	belongs_to :avaluo_rural
	serialize :claimant_address, JSON
	attr_accessor :tvia, :via, :adicional, :num, :compvia, :placa, :compnum

	before_save :address_hash
	before_save :full_street_address

	geocoded_by :full_street_address   # can also be an IP address
	after_validation :geocode       # auto-fetch coordinates

	def full_street_address
		a = claimant_address.values.join('')
		a + ', ' + municipio + ', ' + depart
	end
end
