class Construction < ActiveRecord::Base
	include AddressHash
	belongs_to :rural
end
