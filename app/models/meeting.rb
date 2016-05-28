class Meeting < ActiveRecord::Base
  def self.get_meetings
    Meeting.all
  end

  def self.create_meeting(meeting_obj)
    meeting = Meeting.new(meeting_obj)
    meeting.save
  end
end
