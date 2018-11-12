class SportsController < ApplicationController
  before_action :find_sport, only: [:show, :edit, :update, :destroy]

  def index
    @sports = Sport.all
  end

  def show
  end

  def method
    #code
  end

  def method
    #code
  end

  def method
    #code
  end

  def method
    #code
  end

  def method
    #code
  end

  private

  def find_sport
    @sport = Sport.find_by(id: params[:id])
  end

  def sport_params
    params.require(:sport).permit(:name, :player_count)
  end
end
