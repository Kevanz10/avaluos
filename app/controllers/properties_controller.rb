class PropertiesController < ApplicationController
		def index
   	@properties= Property.all
  end

  def new
    @property= Property.new
  end

  def edit
    @property = Property.find(params[:id])
  end

  def show
  	@property =Property.find(params[:id])
  end

  def destroy
   	@property = Property.find(params[:id])
   	@property.destroy
   	redirect_to avaluo_rurals_path
  end

  def create
    @property= Property.new(titulation_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to avaluo_rurals_path, notice: 'Se ha guardado correctamente.' }
        format.json { render json: avaluo_rurals_path, status: :created, location: avaluo_rurals_path }
      else
        format.html { render action: "new" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
	 	@property =Property.find(params[:id])
    @property.update(property_params)
    redirect_to avaluo_rurals_path
  end

  def property_params
		params.require(:property).permit(:id_type, :tinmueble, :uinmueble, :clainmueble, :tvivienda,
																		:phorizontal, :conjunto, :nedificios, :upisos, :ubicacion,
																		:tunidades, :coeficiente, :porteria, :juegos, :citofono, 
																		:cmultiple, :scomunal, :bicicletero, :beyectora, :shutbasuras,
																		:piscina, :airecentra, :econstante, :tagua, :csquash, :epresion,
																		:chouse, :zverdes, :pelectrica, :gvisitantes, :gimnasio, :ascensor,
																		:avaluo_rural_id)
  end
end
