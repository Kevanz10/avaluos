class AvaluoRuralsController < ApplicationController
	def index
   	@avaluo_rurales= AvaluoRural.all
  end

  def new
    @avaluo_rural= AvaluoRural.new
  end

  def edit
    @avaluo_rural = AvaluoRural.find(params[:id])
  end

  def show
  	@avaluo_rural =AvaluoRural.find(params[:id])
  end

  def destroy
   	@avaluo_rural = AvaluoRural.find(params[:id])
   	@avaluo_rural.destroy
   	redirect_to avaluo_rurals_path
  end

  def create
    @avaluo_rural= AvaluoRural.new(towers_params)

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
	 	@avaluo_rural =AvaluoRural.find(params[:id])
    @avaluo_rural.update(towers_params)
    redirect_to avaluo_rurals_path
  end

  private

    def towers_params
  		params.require(:avaluo_rural).permit(:document_number, :first_name,
  									 :last_name, :s_surname, :cellphone, :email, 
                     :claimant_department, :claimant_city, :second_name,
                     :cctype, :claimant_address, :tvia, :via, :compvia, 
                     :num, :compnum, :placa, :adicional, 
                     titulation_attributes: [:id,  :claimant_address, :depart,:municipio, :avaluo_rural_id, 
                                            :tvia, :via, :compvia, 
                                            :num, :compnum, :placa, :adicional])
    end
end

