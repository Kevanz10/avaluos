class Neighborhood < ActiveRecord::Base
	include AddressHash
	belongs_to :avaluo_rural
	
	
end
