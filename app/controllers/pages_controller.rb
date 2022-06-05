class PagesController < ApplicationController
  def home
    # これがないとエラーになるよ
    @q = Internship.where(is_public: true).ransack(params[:q])

    @internships = Internship.where(is_public: true).limit(6)
    @courses = Course.all.limit(4)
    @announcements = Announcement.all.limit(4)
  end

  def steps
  end

  def checkup
    interest = params['interest'] # 'creator' or 'service' or 'other'
    if interest.nil?
      @internships = []
      @nagaoka_companies = []
      return
    end

    interest_business_categories = {
      'creator' => ['IT・通信'],
      'service' => ['建設・建築'],
      'other' => ['自動車販売']
    }
    categories = BusinessCategory.where(name: interest_business_categories[interest])
    @internships = categories.map(&:companies).flatten.map(&:internships).flatten
    @nagaoka_companies = categories.map(&:nagaoka_companies).flatten
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
