class EventDetailsController < ApplicationController
  before_action :set_event_detail, only: %i[show edit update destroy]

  def index
    @q = EventDetail.ransack(params[:q])
    @event_details = @q.result(distinct: true).includes(:event,
                                                        :comments).page(params[:page]).per(10)
  end

  def show
    @comment = Comment.new
  end

  def new
    @event_detail = EventDetail.new
  end

  def edit; end

  def create
    @event_detail = EventDetail.new(event_detail_params)

    if @event_detail.save
      redirect_to @event_detail,
                  notice: "Event detail was successfully created."
    else
      render :new
    end
  end

  def update
    if @event_detail.update(event_detail_params)
      redirect_to @event_detail,
                  notice: "Event detail was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @event_detail.destroy
    redirect_to event_details_url,
                notice: "Event detail was successfully destroyed."
  end

  private

  def set_event_detail
    @event_detail = EventDetail.find(params[:id])
  end

  def event_detail_params
    params.require(:event_detail).permit(:event_id, :event_name,
                                         :event_location)
  end
end
