class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    respond_to do |format|
      format.html
    end
  end

  def dashboard2

  end

  def buttons

  end

  def typography

  end

  def pages_profile

  end

  def pages_timeline

  end

  def pages_invoice

  end

  def pages_contact

  end
end
