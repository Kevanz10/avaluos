class Titulation < ActiveRecord::Base
	include AddressHash

	belongs_to :avaluo_rural
	serialize :claimant_address, JSON
	attr_accessor :tvia, :via, :adicional, :num, :compvia, :placa, :compnum

	before_save :address_hash
end
