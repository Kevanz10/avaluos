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

  def tinmueble_hash
    inmueble_hash = { t_inmue: t_inmue, d_tinmue: d_tinmue}
      self.tinmueble = inmueble_hash
  end
  #method for making 'uso de inmuble' and 'descripcion' into a hash.
  def usoinmue_hash
    inmueble_hash = {u_inmue: u_inmue, d_uinmue: d_uinmue}
    self.uinmueble = inmueble_hash
  end

  #method for making 'clase de inmueble' and 'descripcion' into a hash.
  def claseinmue_hash
    inmueble_hash = {cla_inmue: cla_inmue, d_clainme: d_clainme}
    self.clainmueble = inmueble_hash
  end

  #method for making 'tipo de vivienda' and 'descripcion' into a hash.
  def tvivienda_hash
    inmueble_hash = {t_vivienda: t_vivienda, d_tvivienda: d_tvivienda}
    self.tvivienda = inmueble_hash
  end


end
