class HomeController < ApplicationController

  def index
    peoplellist = Person.new

    orglist = Orginization.new

    @people_orginizations = [peoplelist, orglist]
  end
end
