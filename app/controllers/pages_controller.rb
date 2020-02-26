class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :owner ]

  def home
  end

  def owner
  end
end
