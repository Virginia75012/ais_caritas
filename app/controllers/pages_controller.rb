class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :owner, :about, :missions ]

  def home
  end

  def owner
  end

  def about
  end

  def missions
  end

  def dashboard
    @flats = Flat.all.geocoded
    authorize current_user
    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
end
