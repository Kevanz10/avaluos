class Property < ActiveRecord::Base
	include AddressHash
	belongs_to :rural
	serialize :tinmueble, JSON
	serialize :uinmueble, JSON
	serialize :clainmueble, JSON
	serialize :tvivienda, JSON
	attr_accessor :t_inmue, :d_tinmue, :u_inmue, :d_uinmue, :cla_inmue, :d_clainme, :t_vivienda, 
                      :d_tvivienda
  before_save :tinmueble_hash
  before_save :usoinmue_hash
  before_save :claseinmue_hash
  before_save :tvivienda_hash
   
end
