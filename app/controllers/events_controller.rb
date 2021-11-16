class EventsController < ApplicationController
  before_action :current_profile_must_be_event_event_goer,
                only: %i[edit update destroy]

  before_action :set_event, only: %i[show edit update destroy]

  def index
    @q = Event.ransack(params[:q])
    @events = @q.result(distinct: true).includes(:event_goer,
                                                 :event_detail).page(params[:page]).per(10)
  end

  def show; end

  def new
    @event = Event.new
  end

  def edit; end

  def create
    @event = Event.new(event_params)

    if @event.save
      message = "Event was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @event, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: "Event was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    message = "Event was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to events_url, notice: message
    end
  end

  private

  def current_profile_must_be_event_event_goer
    set_event
    unless current_profile == @event.event_goer
      redirect_back fallback_location: root_path,
                    alert: "You are not authorized for that."
    end
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:event_id, :event_name, :event_start_time,
                                  :event_start_date, :event_end_time, :event_end_date, :event_host_id, :event_host_name, :photo)
  end
end
