class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy, :join_event]
  before_action :current_user, only: [:join_event]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.valid?
      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to new_event_path
    end
  end

  def edit

  end

  def update
    @event.update(event_params)
    if @event.valid?
      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to edit_event_path(@event)
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  def join_event
    UserEvent.create(user_id: @user.id, event_id: @event.id)
    redirect_to @event
  end

  private

  def find_event
    @event = Event.find_by(id: params[:id])
  end

  def event_params
    params.require(:event).permit(:sport_id, :title, :location, :duration, :date, :time, :player_count)
  end
end
