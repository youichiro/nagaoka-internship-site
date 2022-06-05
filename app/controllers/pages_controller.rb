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
      'creator' => ['メーカー(電気・電子・機械・食品・その他)', '建設・建築'],
      'service' => ['小売・流通・自動車販売・運送・運輸', '卸売・商社', 'ソフトウエア・IT・通信', 'サービス・飲食・宿泊', '金融・保険', '官公庁・組合・団体・非営利団体'],
      'other' => ['その他']
    }
    categories = BusinessCategory.where(name: interest_business_categories[interest])
    @internships = categories.map(&:companies).flatten.map(&:internships).flatten.filter { |internship| internship.is_public == true }
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
