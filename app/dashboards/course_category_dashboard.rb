require "administrate/base_dashboard"

class CourseCategoryDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    color: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    name
    color
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    name
    color
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    name
    color
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(resource)
    "##{resource.id} #{resource.name}"
  end
end
