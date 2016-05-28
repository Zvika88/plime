class MeetingsController < ApplicationController
  
  def index
    meetings = Meeting.get_meetings
    render json: meetings
  end

  def create
    Meeting.create_meeting(meeting_params)
    render json:{}, status: :created
  end

  def update
    Meeting.update_meeting(meeting_params, (params[:id]))
    render json:{}, status: :accepted
  end

  def destroy
     Meeting.destroy_meeting(params[:id])
     render nothing: true, status: :no_content
  end

  private

    def meeting_params
      params.require(:meeting).permit(:name, :date, :duration, :location)
    end
end
