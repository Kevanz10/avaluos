class Neighborhood < ActiveRecord::Base
	include AddressHash
	belongs_to :avaluo_rural
	attr_accessor :sector, :predio, :sector_acue, :predio_acue
	serialize :alcantarillado, JSON
	serialize :acueducto, JSON

	before_save :alcantarillados, :acueducto
end
