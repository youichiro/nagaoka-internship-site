require "administrate/base_dashboard"

class EmployeeDetailDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    employee: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    employee
    id
    name
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    employee
    id
    name
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    employee
    name
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
