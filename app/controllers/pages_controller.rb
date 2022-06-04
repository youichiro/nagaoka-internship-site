class PagesController < ApplicationController
  def home
    # これがないとエラーになるよ
    @q = Internship.where(is_public: true).ransack(params[:q])

    @internships = Internship.where(is_public: true).limit(6)
    @courses = Course.all.limit(4)
    @announcements = Announcement.all.limit(4)
  end

  def privacy_policy
  end

  def terms_of_service
  end

  def contact
  end

  def comment_form
  end
end
