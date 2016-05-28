class Meeting < ActiveRecord::Base
  def self.get_meetings
    Meeting.all
  end

  def self.create_meeting(meeting_obj)
    meeting = Meeting.new(meeting_obj)
    meeting.save
  end

  def self.update_meeting(meeting_obj, meeting_id)
    current_meeting = Meeting.find(meeting_id)
    current_meeting.update(meeting_obj)
  end

  def self.destroy_meeting(meeting_id)
    Meeting.destroy(meeting_id)
  end
end
