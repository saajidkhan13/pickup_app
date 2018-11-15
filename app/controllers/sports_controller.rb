class SportsController < ApplicationController
  before_action :find_sport, only: [:show, :edit, :update, :destroy]

  def index
    @sports = Sport.all
  end

  def show
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.create(sport_params)
    if @sport.valid?
      redirect_to @sport
    else
      flash[:errors] = @sport.errors.full_messages
      redirect_to new_sport_path
    end
  end

  def edit

  end

  def update
    @sport.update(sport_params)
    redirect_to @sport
  end

  def destroy
    @sport.destroy
    redirect_to sports_path
  end

  private

  def find_sport
    @sport = Sport.find_by(id: params[:id])
  end

  def sport_params
    params.require(:sport).permit(:name)
  end
end
