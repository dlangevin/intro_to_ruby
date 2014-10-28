class PetsController < ApplicationController

  respond_to :html, :json

  def index
    @pets = Pet.all

    if params[:pet_type]
      @pets = @pets.where(pet_type: params[:pet_type])
    end

    @pet_types = @pets.map(&:pet_type).uniq

    respond_with(@pets)
  end

end