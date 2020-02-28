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
end
