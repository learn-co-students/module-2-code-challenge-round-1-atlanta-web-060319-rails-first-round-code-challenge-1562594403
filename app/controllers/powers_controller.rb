class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end 

  def new
    @power = Power.new
  end 

  def create 
    @power = Power.new(power_params)
      if @power.save
        redirect_to_power_path(@power)
      else 
        redirect_to_new_power_path
      end 


      private

      def power_params
        params.require(:power).permit(:name, :description)


  end 



end
