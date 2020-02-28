class SimulationsController < ApplicationController
  before_action :skip_authorization
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @simulation = Simulation.new
  end

  def create
    @simulation = Simulation.new(simulation_params)

      if @simulation.save
      redirect_to simulation
    else
      render :new
    end
  end

private

  def simulation_params
    params.require(:simulation).permit(:zone, :area, :percentage)
  end
end
