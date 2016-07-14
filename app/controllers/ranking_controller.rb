class RankingController < ApplicationController
  
  def want
    @title = "Wantランキング"
    render 'ranking'
  end
  
  def have
    @title = "Haveランキング"
    render 'ranking'
  end
end