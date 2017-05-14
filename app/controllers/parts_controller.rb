class PartsController < ApplicationController
  def index()
    @parts = Part.all
  end
  def new()
    @part = Part.new
  end
  def create()
    @part = Part.new(part_params)
    if @part.save
      redirect_to @part
    else
      render 'new'
    end
  end
  def show()
    @part = Part.find(params[:id])
  end
  def edit()
    @part = Part.find(params[:id])
  end
  def update()
    @part = Part.find(params[:id])
    if @part.update(part_params)
      redirect_to @part
    else
      render 'edit'
    end
  end
  def destroy()
    @part = Part.find(params[:id])
    @part.destroy
    redirect_to parts_path
  end

  private
  def part_params()
    params.require(:part).permit(:name, :part_number, :vendor_id, :on_hand, :threshold,
      :order_url, :cost, :unit_of_issue)
  end
end
