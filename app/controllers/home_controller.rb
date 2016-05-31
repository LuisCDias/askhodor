class HomeController < ApplicationController

  def index
    @trendy = Trendy.all
    @popular = Popular.all
    @most_wanted = MostWanted.all
  end
end
