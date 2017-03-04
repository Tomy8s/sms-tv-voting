class CampaignsController < ApplicationController
  def show
    @campaign = Vote.where(campaign: params[:id])
    @candidates = @campaign.distinct.pluck(:candidate)
    @votes = Vote.all
  end
end