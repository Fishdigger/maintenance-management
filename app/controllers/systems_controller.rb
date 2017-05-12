class SystemsController < ApplicationController

  def index()
    @systems = System.all
  end

  def new()

  end

  def create()
    @system = System.new(system_params)
    @system.save
    redirect_to @system
  end

  def edit()

  end

  def show()
    @system = System.find(params[:id])
  end

  def update()

  end

  def destroy()

  end

  private
  def system_params()
    params.require(:system).permit(:name, :serial_number, :part_number,
      :family, :vendor, :install_date, :cost)
  end

end
