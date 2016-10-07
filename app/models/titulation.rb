class Titulation < ActiveRecord::Base
	include AddressHash

	belongs_to :rural
	serialize :claimant_address, JSON

	before_save :address_hash
	before_save :full_street_address

	geocoded_by :full_street_address   # can also be an IP address
	after_validation :geocode       # auto-fetch coordinates

	def full_street_address
		if !self.claimant_address.nil?
			a = claimant_address.values.join('')
			a + ', ' + self.municipio + ', ' + self.depart
		end
	end
end
