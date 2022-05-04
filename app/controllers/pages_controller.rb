class PagesController < ApplicationController
  def home
    @internships = Internship.all.limit(6).load_async
    @courses = Course.all.limit(4)
    @announcements = Announcement.all.limit(4)
  end
end
