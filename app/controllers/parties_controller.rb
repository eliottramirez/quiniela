class PartiesController < ApplicationController
  before_action :set_party, only: [:show, :edit, :update, :destroy]

  # GET /parties or /parties.json
  def index
    @parties = current_user.parties
  end

  # GET /parties/1 or /parties/1.json
  def show
    @member = current_user.member?(@party)
    @admin = current_user.admin?(@party)
  end

  # GET /parties/new
  def new
    @party = Party.new
    pool = Pool.new(party: @party, user: current_user)
    Match.all.each { |match| pool.bets << Bet.new(pool: pool, match: match) }
    @party.pools << pool
  end

  # GET /parties/1/edit
  def edit
  end

  # POST /parties or /parties.json
  def create
    @party = Party.new(party_params)

    if @party.save
      redirect_to party_url(@party), notice: "Grupo creado exitosamente."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parties/1 or /parties/1.json
  def update
    if @party.update(party_params)
      redirect_to party_url(@party), notice: "Grupo actualizado exitosamente."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /parties/1 or /parties/1.json
  def destroy
    @party.destroy

    redirect_to parties_url, notice: "Grupo eliminado exitosamente."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_party
    @party = Party.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def party_params
    params
      .require(:party)
      .permit(
        :name,
        pools_attributes: [
          :id,
          :party_id,
          :user_id,
          :party_admin,
          { bets_attributes: [:id, :guess, :match_id] }
        ]
      )
  end
end
