class RuralsController < ApplicationController
  layout 'rural'

  def test
    @rural= Rural.new
  end
  
	def index
   	@rurals= Rural.all
  end

  def new
    @rural= Rural.new
  end

  def edit
    @rural = Rural.find(params[:id])
    @evaluates= Rural.find(params[:id]).value.evaluates.all
  end

  def show
  	@rural = Rural.find(params[:id])
  end

  def destroy
   	@rural = Rural.find(params[:id])
   	@rural.destroy
   	redirect_to rurals_path
  end

  def create
    @rural= current_user.rurals.build(avaluo_params)

    respond_to do |format|
      if @rural.save
        format.html { redirect_to rurals_path, notice: 'Se ha guardado correctamente.' }
        format.json { render json: @rural, status: :created, location: @rural }
      else
        format.html { render action: "new" }
        format.json { render json: @rural.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
	 	@rural = Rural.find(params[:id])
    @rural.update(avaluo_params)
    redirect_to rurals_path
  end

  private

    def avaluo_params
  		params.require(:rural).permit(:document_number, :first_name,
  									 :last_name, :s_surname, :cellphone, :email, 
                     :claimant_department, :claimant_city, :second_name,
                     :cctype, :claimant_address, :entidad,:segmento, :objecto, :motivo, :credito,
                     :tvia, :via, :compvia, :num, :compnum, :placa, :adicional, :estado,
                     neighborhood_attributes: [:id, :alcantasector, :alcantapredio, :estrato, :evias,
                      :rural_id, :acueducsector, :acueducpredio, :blegal, :vpavimentadas, :gassector,
                      :gaspredio, :toposector, :svias, :telsector, :telpredio, :transporte, :condiciones,
                      :energiasector, :energiapredio, :andenes, :parques, :aire, :paradero, :basura, :alumbrado,
                      :inseguridad, :zverdes, :ruido, :arborizacion, :saguas, :alamedas, :otro, :cicloruta,
                      :pvalorizacion, :usector],
                     construction_attributes: [:id, :rural_id, :estado, :npisos, :sotanos, :años, :vetustez, 
                                              :pisos, :estructura, :sismoresistente, :cubierta,
                                              :fachada, :tfachada, :reforzada, :daños, :material,
                                              :iluminar, :testructura, :ventilar, :planta,
                                              :altura,:habitacion, :ehabitacion, :shabitacion, :closet,
                                              :sala, :comedor, :pribanos, :socibanos, :serbanos, :cocina,
                                              :estudio, :balcon, :terraza, :patiointer, :jardin, :zonaropa,
                                              :zonaverde, :locales, :oficina, :bodega, :calidad, :tgaraje,
                                              :observacion, :privado, :exclusivo, :episos, :emuros, :etechos, :emadera,
                                              :emetal,:ebanos, :ecocina, :cobra, :econstruction, 
                                              :rpisos, :rmuros, :rtechos, :rmadera, :rmetal, 
                                              :rbanos, :rcocina, :remodelado, :conservar, :total],
                    property_attributes:      [:id_type, :tinmueble, :uinmueble, :clainmueble, :tvivienda,
                                              :phorizontal, :conjunto, :nedificios, :upisos, :ubicacion,
                                              :tunidades, :coeficiente, :porteria, :juegos, :citofono, 
                                              :cmultiple, :scomunal, :bicicletero, :beyectora, :shutbasuras,
                                              :piscina, :airecentra, :econstante, :tagua, :csquash, :epresion,
                                              :chouse, :zverdes, :pelectrica, :gvisitantes, :gimnasio, 
                                              :ascensor, :airecentral, :rural_id, :t_inmue, :d_tinmue, :u_inmue, 
                                              :d_uinmue, :cla_inmue, :d_clainme, :t_vivienda, :d_tvivienda, :id, 
                                              :golfito, :otro], 
                     titulation_attributes: [:id,  :claimant_address, :conjunto, :sector, :depart,
                                             :municipio, :rural_id, 
                                            :tvia, :via, :compvia, :num, :compnum, 
                                            :placa, :adicional, :barrio, :matrinmo, :numescritura,
                                            :departescritura, :sematrinmo, :numnotaria, :ciuescritura, 
                                            :fecha, :latitude, :longitude],
                      value_attributes: [:actualidad, :comportamiento, :valoruvr, :avaluouvr,
                                         :id, :vasegurable, :vterreno, :vconstruccion, 
                                         :vconstruccion, :garantia, :observacion, :danexo,
                                         :vrhonorarios, :Gtraslado, :subhonorarios, :ihonorarios,
                                         :total, :odireccion, :rural_id, :iterreno, :tiempo, evaluates_attributes: [:descripcion,
                                          :nombre, :unidad, :area, :unitario,
                                            :vtotal, :_destroy, :id, :value_id, :rural_id] ],
                      )
                     
    end
end

