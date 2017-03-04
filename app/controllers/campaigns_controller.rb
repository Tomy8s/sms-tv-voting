class CampaignsController < ApplicationController
  def index
    @campaigns = Vote.distinct.pluck(:campaign)
    @votes = Vote.all
  end
  
  def show
    @campaign = Vote.where(campaign: params[:id])
    @candidates = @campaign.distinct.pluck(:candidate)
    @votes = Vote.all
  end
end