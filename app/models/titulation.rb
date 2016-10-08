class Titulation < ActiveRecord::Base
	include AddressHash

	belongs_to :rural
	before_save :address_hash , :full_street_address

	geocoded_by :full_street_address
	before_save :geocode, on: [:create, :update]

	serialize :claimant_address, JSON

	def address_hash
    hash = { tipo_via: self.tvia, via: self.via, compvia: self.compvia, 
    				numeral: '#', num: self.num, compnum: self.compnum, separador: '-',
    				placa: self.placa, adicional: self.adicional }
    self.claimant_address = hash
  end

	def full_street_address
		if !self.claimant_address.nil?
			a = claimant_address.values.join('')
			a + ', ' + self.municipio + ', ' + self.depart
		end
	end

	# def geocoding
	# 	if !self.claimant_address.nil?
	# 		Geocoder.coordinates(full_street_address)
	# 	end
	# end

	# def latitude_conf
	# 	if !self.claimant_address.nil?
	# 		a = self.geocoding[0]
	# 		self.latitude = a
	# 		self.save
	# 		a
	# 	end
	# end

	# def longitude_conf
	# 	if !self.claimant_address.nil?
	# 		a = Geocoder.coordinates(full_street_address)[1]
	# 		self.longitude = a
	# 		self.save
	# 		a
	# 	end
	# end
end
