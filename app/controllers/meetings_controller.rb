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
    Meeting.update_meeting((params[:id]), meeting_params)
    render json:{}, status: :accepted
  end

  # def destroy
  #   Goal.destroy_goal(params[:id])
  #   render nothing: true, status: :no_content
  # end

  private

    def meeting_params
      params.require(:meeting).permit(:name)
    end
end
