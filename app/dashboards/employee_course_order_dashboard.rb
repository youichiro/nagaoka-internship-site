require "administrate/base_dashboard"

class EmployeeCourseOrderDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    employee: Field::BelongsTo,
    course: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    employee
    course
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    employee
    course
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    employee
    course
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
