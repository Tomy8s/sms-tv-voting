class ResultsController < ApplicationController
  def index
    @campaigns = Vote.distinct.pluck(:campaign)
    @votes = Vote.all
  end
end
