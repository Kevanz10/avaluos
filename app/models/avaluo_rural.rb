class AvaluoRural < ActiveRecord::Base
	include AddressHash

	has_one :titulation
	has_one :construction
	has_one :neighborhood
	has_one :property
	accepts_nested_attributes_for :titulation, :construction, :neighborhood, :property
	serialize :claimant_address, JSON
	before_save :address_hash

	attr_accessor :tvia, :via, :adicional, :num, :compvia, :placa, :compnum
end
