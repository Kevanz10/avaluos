class Construction < ActiveRecord::Base
	include AddressHash

	belongs_to :rural
	serialize :estado, JSON
	attr_accessor :cpisos, :cmuros, :ctechos, :cmadera, :cmetal, :cbanos, :ccocina
	serialize :calidad, JSON

	before_save :estados
end
