class HomeController < ApplicationController

  def index
    @peoplelist = Person.all

    @orglist = Orginization.all

    @alienlist = Alien.all

  end
end
