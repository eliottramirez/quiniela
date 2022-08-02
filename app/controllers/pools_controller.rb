class PoolsController < ApplicationController
  before_action :set_pool, only: [:show, :edit, :update, :destroy]

  # GET /pools or /pools.json
  def index
    @pools = authorize policy_scope(Pool)
  end

  # GET /pools/1 or /pools/1.json
  def show
    @bets =
      if current_user.owner_of?(@pool)
        @pool.bets.order(:match_id)
      else
        @pool.public_bets
      end
  end

  # GET /pools/new
  def new
    @pool = authorize Pool.new
    @pool.party = Party.find_by(sharing_code: params[:sharing_code])
    @pool.user = current_user
    Match.all.each { |match| @pool.bets << Bet.new(pool: @pool, match: match) }
  end

  # GET /pools/1/edit
  def edit
  end

  # POST /pools or /pools.json
  def create
    @pool = authorize Pool.new(pool_params)

    if @pool.save
      redirect_to party_url(@pool.party), notice: "Te has unido al grupo \"#{@pool.party.name}\"."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pools/1 or /pools/1.json
  def update
    if @pool.update(pool_params)
      redirect_to pool_url(@pool), notice: "Quiniela actualizada."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /pools/1 or /pools/1.json
  def destroy
    @pool.destroy

    redirect_to parties_url, notice: "#{@pool.user.name} abandóno el grupo."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pool
    @pool = authorize Pool.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pool_params
    params.require(:pool).permit(:id, :party_id, :user_id, :party_admin, bets_attributes: [:id, :guess, :match_id])
  end
end
