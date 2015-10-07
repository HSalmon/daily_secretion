class SecretionsController < ApplicationController
  
  def index
    @secretions = Secretion.all
  end

  def zines
  end

  def about
  end

  def contact
  end
end
