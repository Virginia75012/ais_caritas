class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :owner, :about ]

  def home
  end

  def owner
  end

  def about
  end
end
