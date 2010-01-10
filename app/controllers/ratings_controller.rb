class RatingsController < ApplicationController

  def up     
    rate_it(1)
  end

  def down
    rate_it(-1)
  end
  
  private 
  def rate_it(score)
    pres = Presentation.find(params[:presentation_id])
    rating = pres.ratings.new :user => current_user,
                              :score => score
    if rating.save
      flash[:success] = "thanks for rating!"
    else
      flash[:error] = "Our rating system can't handle rating firepower of that magnitude!"
    end
    redirect_to presentation_path(pres)
  end

end
