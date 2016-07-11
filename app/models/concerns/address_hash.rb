module AddressHash
	extend ActiveSupport::Concern
	
	def address_hash
    hash = { tipo_via: tvia, via: via, compvia: compvia, 
    				numeral: '#', num: num, compnum: compnum, separador: '-',
    				placa: placa, adicional: adicional }
    self.claimant_address = hash
  end

  def estados
    estados_hash = { cpisos: cpisos, cmuros: cmuros , ctechos: ctechos, cmadera: cmadera,
             cmetal: cmetal, cbanos: cbanos, ccocina: ccocina }
  	self.estado = estados_hash
  end

  def alcantarillados
    alcantarillado_hash = {sector: sector, predio: predio}
    self.alcantarillado = alcantarillado_hash
  end
end
