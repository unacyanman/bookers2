class HomesController < ApplicationController
  
  def top
    if current_user
      redirect_to users_show_path
    end
  end
  
  def about
      
  end 
  
end
