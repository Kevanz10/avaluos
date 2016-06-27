module AddressHash
	extend ActiveSupport::Concern
	
	def address_hash
    hash = { tipo_via: tvia, via: via, compvia: compvia, 
    				num: num, compnum: compnum, placa: placa, 
    				adicional: adicional }
    self.claimant_address = hash
     
  end
end
