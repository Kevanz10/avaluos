class ConstructionsController < ApplicationController
	def index
   	@constructions= Construction.all
  end

  def new
    @construction= Construction.new
  end

  def edit
    @construction = Construction.find(params[:id])
  end

  def show
  	@construction =Construction.find(params[:id])
  end

  def destroy
   	@construction = Construction.find(params[:id])
   	@construction.destroy
   	redirect_to students_path
  end

  def create
    @construction= Construction.new(construction_params)

    respond_to do |format|
      if @construction.save
        format.html { redirect_to @avaluo_rural, notice: 'Se ha guardado correctamente.' }
        format.json { render json: @avaluo_rural, status: :created, location: @avaluo_rural }
      else
        format.html { render action: "new" }
        format.json { render json: @avaluo_rural.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
	 	@avaluo_rural =Construction.find(params[:id])
    @avaluo_rural.update(construction_params)
    redirect_to avaluo_rurals_path
  end

  def construction_params
		params.require(:avaluo_rural).permit(:id_type, :document_number, :first_name, 
                  :claimant_department, :last_name, :s_surname, :cellphone, :email, 
                  :claimant_address, :claimant_city)
  end
end
