class StaticPageController < ApplicationController
  
  def Home
    @gossips = Gossip.all
  end 

  def Team
  end

  def Contact
  end

  
end
