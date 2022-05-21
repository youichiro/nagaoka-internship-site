require "administrate/base_dashboard"

class StudentCourseOrderDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    student: Field::BelongsTo,
    course: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    student
    course
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    student
    course
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    student
    course
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
