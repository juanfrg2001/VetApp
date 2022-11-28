class StaticPagesController < ApplicationController
  def index
    @pets = Pet.all.count
    @responsables = Responsible.all.count
    @locations = Location.all.count
    @medicals = Medical.all.count
    @specialiies = Speciality.all.count
    @species = Species.all.count
  end
end
