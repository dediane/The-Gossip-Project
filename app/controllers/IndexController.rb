class IndexController < ApplicationController
  def home
    @gossips = Gossip.all
  end
  def team
  end
  def contact
  end
  def welcome
    @gossips = Gossip.all
  end
  
  def user
    @user = User.all.find_by(id:params[:id])
  end

  def city
    @city = City.all.find_by(id:params[:id])
    @gossips = Gossip.all
  end
end