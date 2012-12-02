class StaticPagesController < ApplicationController
  def home
    if !current_user.nil?
      render 'tasks/index'
    end
    
    @skip_header = true;
  end
end
