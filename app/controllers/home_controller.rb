class HomeController < ApplicationController

  def top
  end

  def check
    @card = params[:cards]
    card = CardSet.new(@card)

    if (#error mesage? Y:N)
    card.judge
    else
    render("/home")
    end










  end
end