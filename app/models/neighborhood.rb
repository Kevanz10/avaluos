class Neighborhood < ActiveRecord::Base
	include AddressHash
	belongs_to :avaluo_rural
	attr_accessor :sector, :predio
	serialize :alcantarillado, JSON

	before_save :alcantarillados
end
