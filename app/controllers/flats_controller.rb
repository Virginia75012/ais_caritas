class FlatsController < ApplicationController
  def index
    @flats = policy_scope(Flat)
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat

    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    authorize @flat
    if @flat.save
      redirect_to flats_path
    else
      render :edit
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy

    authorize @flat
    if current_user.admin
      redirect_to dashboard_path
    else
      redirect_to flats_path
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit( :title, :address, :typology, :area, :rent, :rental_charges, :current_state, :appartement_condition, :origin_contact, :message, :photos)
  end
end
