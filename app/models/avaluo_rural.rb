class AvaluoRural < ActiveRecord::Base
	belongs_to :user
	include AddressHash
	has_one :value
	has_one :titulation
	has_one :construction
	has_one :neighborhood
	has_one :property
	has_many :evaluates
	accepts_nested_attributes_for :titulation, :construction, :neighborhood, 
																:property, :value, :evaluates, allow_destroy: true
	serialize :claimant_address, JSON
	before_save :address_hash

	attr_accessor :tvia, :via, :adicional, :num, :compvia, :placa, :compnum
end
