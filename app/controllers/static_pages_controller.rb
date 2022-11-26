class StaticPagesController < ApplicationController
  def index
    @pets = Pet.all.count
    @responsables = Responsible.all.count
    @locations = Location.all.count
    @medicals = Medical.all.count
  end
end
