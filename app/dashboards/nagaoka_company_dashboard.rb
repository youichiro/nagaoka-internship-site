require "administrate/base_dashboard"

class NagaokaCompanyDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    business_category: Field::BelongsTo,
    id: Field::Number,
    number: Field::Number,
    name: Field::String,
    company_url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    number
    name
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    number
    name
    company_url
    business_category
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    number
    name
    company_url
    business_category
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(resource)
    "##{resource.id} #{resource.name}"
  end
end
