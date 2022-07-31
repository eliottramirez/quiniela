class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  # GET /matches or /matches.json
  def index
    @matches = authorize Match.all
  end

  # GET /matches/1 or /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = authorize Match.new
  end

  # GET /matches/1/edit
  def edit
  end

  # POST /matches or /matches.json
  def create
    @match = authorize Match.new(match_params)

    if @match.save
      redirect_to match_url(@match), notice: "Match was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /matches/1 or /matches/1.json
  def update
    if @match.update(match_params)
      redirect_to match_url(@match), notice: "Match was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /matches/1 or /matches/1.json
  def destroy
    @match.destroy

    redirect_to matches_url, notice: "Match was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_match
    @match = authorize Match.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def match_params
    params.require(:match).permit(:status, :home_score, :away_score)
  end
end
