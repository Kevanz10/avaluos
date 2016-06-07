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
   	redirect_to students_path
  end

  def create
    @avaluo_rural= AvaluoRural.new(towers_params)

    address_hash = { tipo_via: params[:tvia], via: params[:via], numero: params[:num],
    								 complementvia: params[:compvia], complementnum: params[:compnum], 
    								 placa: params[:placa], adicional: params[:adicional]}

    @avaluo_rural.claimant_address = address_hash

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

  def towers_params
		params.require(:avaluo_rural).permit(:id_type, :document_number, :first_name,
									 :last_name, :s_surname, :cellphone, :email, :claimant_department, 
                   :claimant_city, :second_name, :claimant_address => [])
  end
end
