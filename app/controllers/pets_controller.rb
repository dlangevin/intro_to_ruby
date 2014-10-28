class PetsController < ApplicationController

  respond_to :html, :json

  def index
    @pets = Pet.all
    @pet_types = @pets.map(&:pet_type).uniq

    respond_with(@pets)
  end

end