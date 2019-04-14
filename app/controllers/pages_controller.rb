class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :product, :about, :contact, :demo]

  def home
  end

  def product
  end

  def about
  end

  def demo
  end

  def contact
  end

end
