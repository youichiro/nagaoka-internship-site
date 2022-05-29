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
    id
    name
    created_at
    updated_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    name
    created_at
    updated_at
    employee
  ].freeze

  FORM_ATTRIBUTES = %i[
    name
    employee
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(resource)
    "##{resource.id} #{resource.name}"
  end
end
