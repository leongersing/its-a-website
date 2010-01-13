module PresentationsHelper

  def format_time(time)
    time.strftime("%I:%M %p") unless time.nil?
  end
end
