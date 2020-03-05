class FlatsController < ApplicationController
  before_action :ensure_user_is_owner, only: [:index, :new, :create, :destroy]

  def index
    @flats = policy_scope(Flat).order(created_at: :desc)
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
      redirect_to flats_path, success: "Votre annonce a bien été créé"
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
      redirect_to flats_path, success: "L'annonce a bien été mise à jour"
    else
      render :edit
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    authorize @flat

    if current_user
      redirect_to flats_path, danger: "Annonce bien supprimée"
    else
      redirect_to flats_path
    end
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def validate
    @flat = Flat.find(params[:id])
    authorize @flat

    @flat.update(status: true)
    redirect_to dashboard_path, success: "Logement validé"
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit( :title, :address, :typology, :area, :rent, :rental_charges, :current_state, :appartement_condition, :origin_contact, :message, :photos)
  end

  def ensure_user_is_owner
    return unless current_user.admin?

    user_not_authorized
  end
end
