class TechniciansController < ApplicationController

  def index()
    @technicians = Technician.all
  end

  def new()
    @technician = Technician.new
    @locations = Location.all
    @roles = Role.all
  end

  def create()
    @technician = Technician.new(technician_params)
    if @technician.save
      redirect_to @technician
    else
      render 'new'
    end
  end

  def show()
    @technician = Technician.find(params[:id])
  end

  def edit()
    @technician = Technician.find(params[:id])
    @locations = Location.all
    @roles = Role.all
  end

  def update()
    @technician = Technician.find(params[:id])
    if @technician.update(technician_params)
      redirect_to @technician
    else
      render 'edit'
    end
  end

  def destroy()
    @technician = Technician.find(params[:id])
    @technician.destroy
    redirect_to technicians_path
  end

  private
  def technician_params()
    params.require(:technician).permit(:name, :payrate, :location_id,
      :role_id, :employee_number)
  end

end
