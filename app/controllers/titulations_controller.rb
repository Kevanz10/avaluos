class TitulationsController < ApplicationController
	def index
   	@titulations= Titulation.all
  end

  def new
    @titulation= Titulation.new
  end

  def edit
    @titulation = Titulation.find(params[:id])
  end

  def show
  	@titulation =Titulation.find(params[:id])
  end

  def destroy
   	@titulation = Titulation.find(params[:id])
   	@titulation.destroy
   	redirect_to students_path
  end

  def create
    @titulation= Titulation.new(titulation_params)

    address_hash = { tipo_via: params[:tvia], via: params[:via], numero: params[:num],
    								 complementvia: params[:compvia], complementnum: params[:compnum], 
    								 placa: params[:placa], adicional: params[:adicional]}

    @titulation.address = addres_hash

    respond_to do |format|
      if @titulation.save
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
    @avaluo_rural.update(titulation_params)
    redirect_to avaluo_rurals_path
  end

  def titulation_params
		params.require(:avaluo_rural).permit(:id_type, :document_number, :first_name,
									 :last_name, :s_surname, :cellphone, :email, :claimant_address,
									 :claimant_department, :claimant_city )
  end
end
