class Api::V1::ScheduleController < ApplicationController
  def load_events
    render :json => Event.sorted_events.to_json
  end
end
