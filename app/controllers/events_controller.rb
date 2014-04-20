class EventsController < ApplicationController
  def index
    if session[:user_id]
      @events = Event.all
    else
      redirect_to user_login_path
    end
  end

  def create
    event = Event.create(params[:event])
    redirect_to events_path
  end

  def update
    debugger
    # ROUTING NOT WORKING
    event = Event.find(params[:id])
    event.update_attributes(params[:event])
    redirect_to event_path(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
    @days = Schedule.days_with_indexs
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @days = Schedule.days_with_indexs
  end
end
