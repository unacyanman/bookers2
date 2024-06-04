class HomesController < ApplicationController
  
  def top
    if current_user
      redirect_to users_index_path
    end
  end
  
  def about
      
  end 
  
end
