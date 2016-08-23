class RuralsController < ApplicationController

  def test
  end
  
	def index
   	@avaluo_rurales= Rural.all
  end

  def new
    @avaluo_rural= Rural.new
  end

  def edit
    @avaluo_rural = Rural.find(params[:id])
  end

  def show
  	@avaluo_rural = Rural.find(params[:id])
  end

  def destroy
   	@avaluo_rural = Rural.find(params[:id])
   	@avaluo_rural.destroy
   	redirect_to rurals_path
  end

  def create
    @avaluo_rural= current_user.rurals.build(avaluo_params)

    respond_to do |format|
      if @avaluo_rural.save
        format.html { redirect_to @avaluo_rural, notice: 'Se ha guardado correctamente.' }
        format.json { render json: @avaluo_rural, status: :created, location: @avaluo_rural }
      else
        format.html { render action: "new" }
        format.json { render json: @avaluo_rural.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
	 	@avaluo_rural = Rural.find(params[:id])
    @avaluo_rural.update(avaluo_params)
    redirect_to rurals_path
  end

  private

    def avaluo_params
  		params.require(:rural).permit(:document_number, :first_name,
  									 :last_name, :s_surname, :cellphone, :email, 
                     :claimant_department, :claimant_city, :second_name,
                     :cctype, :claimant_address, :tvia, :via, :compvia, 
                     :num, :compnum, :placa, :adicional,
                     neighborhood_attributes: [:id, :alcantasector, :alcantapredio, :estrato, :evias,
                      :avaluo_rural_id, :acueducsector, :acueducpredio, :blegal, :vpavimentadas, :gassector,
                      :gaspredio, :toposector, :svias, :telsector, :telpredio, :transporte, :condiciones,
                      :energiasector, :energiapredio, :andenes, :parques, :aire, :paradero, :basura, :alumbrado,
                      :inseguridad, :zverdes, :ruido, :arborizacion, :saguas, :alamedas, :otro, :cicloruta,
                      :pvalorizacion, :usector],
                     construction_attributes: [:id, :avaluo_rural_id, :estado, :npisos, :sotanos, :años, :vetustez, 
                                              :pisos, :estructura, :sismoresistente, :cubierta,
                                              :fachada, :tfachada, :reforzada, :daños, :material,
                                              :iluminar, :testructura, :ventilar, :planta,
                                              :altura,:habitacion, :ehabitacion, :shabitacion, :closet,
                                              :sala, :comedor, :pribanos, :socibanos, :serbanos, :cocina,
                                              :estudio, :balcon, :terraza, :patiointer, :jardin, :zonaropa,
                                              :zonaverde, :locales, :oficina, :bodega, :calidad, :tgaraje,
                                              :observacion, :privado, :exclusivo, :cpisos, :cmuros, :ctechos, :cmadera,
                                              :cmetal,:cbanos, :ccocina, :cobra, :econstruction],
                    property_attributes:      [:id_type, :tinmueble, :uinmueble, :clainmueble, :tvivienda,
                                              :phorizontal, :conjunto, :nedificios, :upisos, :ubicacion,
                                              :tunidades, :coeficiente, :porteria, :juegos, :citofono, 
                                              :cmultiple, :scomunal, :bicicletero, :beyectora, :shutbasuras,
                                              :piscina, :airecentra, :econstante, :tagua, :csquash, :epresion,
                                              :chouse, :zverdes, :pelectrica, :gvisitantes, :gimnasio, 
                                              :ascensor, :airecentral, :avaluo_rural_id, :t_inmue, :d_tinmue, :u_inmue, 
                                              :d_uinmue, :cla_inmue, :d_clainme, :t_vivienda, :d_tvivienda, :id, 
                                              :golfito, :otro], 
                     titulation_attributes: [:id,  :claimant_address, :conjunto, :sector, :depart,
                                             :municipio, :avaluo_rural_id, 
                                            :tvia, :via, :compvia, :num, :compnum, 
                                            :placa, :adicional, :barrio, :matrinmo, :numescritura,
                                            :departescritura, :sematrinmo, :numnotaria, :ciuescritura, 
                                            :fecha, :latitude, :longitude],
                      value_attributes: [:actualidad, :comportamiento, :valoruvr, :avaluouvr,
                                         :id, :vasegurable, :vterreno, :vconstruccion, 
                                         :vconstruccion, :garantia, :observacion, :danexo,
                                         :odireccion, :avaluo_rural_id, :iterreno ])
                     
    end
end

