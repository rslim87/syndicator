
class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.create(event_params)
  	if @event.save!
  		redirect_to event_path(@event)
  	else
  		redirect_to new_event_path
  	end
  end

  private

  def event_params
  	params.require(:event).permit(:eventLocation, :eventDescription, :eventDate, :eventCost)
  end

end