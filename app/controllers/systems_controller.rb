class SystemsController < ApplicationController

  def index()
    @systems = System.all
  end

  def new()
    @system = System.new
    @location = Location.all
  end

  def create()
    @system = System.new(system_params)
    if @system.save
      redirect_to @system
    else
      render 'new'
    end
  end

  def edit()
    @system = System.find(params[:id])
  end

  def show()
    @system = System.find(params[:id])
  end

  def update()
    @system = System.find(params[:id])
    if @system.update(system_params)
      redirect_to @system
    else
      render 'edit'
    end
  end

  def destroy()
    @system = System.find(params[:id])
    @system.destroy
    redirect_to systems_path
  end

  private
  def system_params()
    params.require(:system).permit(:name, :serial_number, :part_number,
      :family, :vendor_id, :location, :install_date, :cost)
  end

end
