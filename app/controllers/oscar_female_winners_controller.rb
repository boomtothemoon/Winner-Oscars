class OscarFemaleWinnersController < ApplicationController
  before_action :set_oscar_female_winner, only: [:show, :edit, :update, :destroy]

  # GET /oscar_female_winners
  # GET /oscar_female_winners.json
  def index
    @oscar_female_winners = OscarFemaleWinner.all
  end

  # GET /oscar_female_winners/1
  # GET /oscar_female_winners/1.json
  def show
  end

  # GET /oscar_female_winners/new
  def new
    @oscar_female_winner = OscarFemaleWinner.new
  end

  # GET /oscar_female_winners/1/edit
  def edit
  end

  # POST /oscar_female_winners
  # POST /oscar_female_winners.json
  def create
    @oscar_female_winner = OscarFemaleWinner.new(oscar_female_winner_params)

    respond_to do |format|
      if @oscar_female_winner.save
        format.html { redirect_to @oscar_female_winner, notice: 'Oscar female winner was successfully created.' }
        format.json { render :show, status: :created, location: @oscar_female_winner }
      else
        format.html { render :new }
        format.json { render json: @oscar_female_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oscar_female_winners/1
  # PATCH/PUT /oscar_female_winners/1.json
  def update
    respond_to do |format|
      if @oscar_female_winner.update(oscar_female_winner_params)
        format.html { redirect_to @oscar_female_winner, notice: 'Oscar female winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @oscar_female_winner }
      else
        format.html { render :edit }
        format.json { render json: @oscar_female_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oscar_female_winners/1
  # DELETE /oscar_female_winners/1.json
  def destroy
    @oscar_female_winner.destroy
    respond_to do |format|
      format.html { redirect_to oscar_female_winners_url, notice: 'Oscar female winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oscar_female_winner
      @oscar_female_winner = OscarFemaleWinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oscar_female_winner_params
      params.require(:oscar_female_winner).permit(:year, :age, :name, :movie)
    end
end
