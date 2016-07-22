class NeighborhoodsController < ApplicationController
	def index
   	@Neighborhoods= Neighborhood.all
  end

  def new
    @Neighborhood= Neighborhood.new
  end

  def edit
    @Neighborhood = Neighborhood.find(params[:id])
  end

  def show
  	@Neighborhood =Neighborhood.find(params[:id])
  end

  def destroy
   	@Neighborhood = Neighborhood.find(params[:id])
   	@Neighborhood.destroy
   	redirect_to avaluo_rurals_path
  end

  def create
    @Neighborhood= Neighborhood.new(construction_params)

    respond_to do |format|
      if @Neighborhood.save
        format.html { redirect_to @avaluo_rural, notice: 'Se ha guardado correctamente.' }
        format.json { render json: @avaluo_rural, status: :created, location: @avaluo_rural }
      else
        format.html { render action: "new" }
        format.json { render json: @avaluo_rural.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
	 	@Neighborhood =Neighborhood.find(params[:id])
    @Neighborhood.update(construction_params)
    redirect_to avaluo_rurals_path
  end

  def construction_params
		params.require(:avaluo_rural).permit(:estrato, :evias , :blegal, :vpavimentadas,
																				:toposector, :svias, :transporte, :condiciones,
																				:andenes, :usector, :parques, :aire, :paradero, :basura, :alumbrado,
																				:inseguridad, :zverdes, :ruido, :arborizacion, :saguas, :alamedas, 
																				:otro, :cicloruta, :pvalorizacion, :alcantasector, :alcantapredio,
                                        :acueducsector, :acueducpredio, :gassector, :gaspredio, :telsector,
                                        :telpredio, :energiasector, :energiapredio)
  end
end
