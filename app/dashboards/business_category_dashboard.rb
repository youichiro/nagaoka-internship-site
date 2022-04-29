require "administrate/base_dashboard"

class BusinessCategoryDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    companies: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    companies
    id
    name
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    companies
    id
    name
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    companies
    name
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
