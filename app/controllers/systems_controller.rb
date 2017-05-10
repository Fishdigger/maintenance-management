class SystemsController < ApplicationController

  def index()

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