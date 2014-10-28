class PetsController < ApplicationController

  respond_to :html, :json

  def index
    @pets = Pet.all

    if params[:pet_type].present?
      @pets = @pets.where(pet_type: params[:pet_type])
    end

    @pet_types = Pet.pluck('DISTINCT pet_type')

    respond_with(@pets)
  end

end