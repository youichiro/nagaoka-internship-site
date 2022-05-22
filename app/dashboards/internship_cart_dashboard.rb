require "administrate/base_dashboard"

class InternshipCartDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    student: Field::BelongsTo,
    internship: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    student
    internship
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    student
    internship
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    student
    internship
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
