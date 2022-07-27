class PoolsController < ApplicationController
  before_action :set_pool, only: [:show, :edit, :update, :destroy]

  # GET /pools or /pools.json
  def index
    @pools = Pool.all
  end

  # GET /pools/1 or /pools/1.json
  def show
  end

  # GET /pools/new
  def new
    @pool = Pool.new
    Match.all.each { |match| @pool.bets << Bet.new(pool: @pool, match: match) }
  end

  # GET /pools/1/edit
  def edit
  end

  # POST /pools or /pools.json
  def create
    @pool = Pool.new(pool_params)

    if @pool.save
      redirect_to pool_url(@pool), notice: "Quiniela creada exitosamente."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pools/1 or /pools/1.json
  def update
    if @pool.update(pool_params)
      redirect_to pool_url(@pool), notice: "Quiniela actualizada exitosamente."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /pools/1 or /pools/1.json
  def destroy
    @pool.destroy

    redirect_to pools_url, notice: "Quniela eliminada exitosamente."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pool
    @pool = Pool.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pool_params
    params.require(:pool).permit(bets_attributes: [:id, :guess, :match_id])
  end
end
