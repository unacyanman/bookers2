class HomesController < ApplicationController
  
  def top
    if current_user
      redirect_to user_path(current_user)
    end
  end
  
  def about
      
  end 
  
end
