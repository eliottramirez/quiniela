class StandingsController < ApplicationController
  def index
    @standings = Team.standings
  end
end
