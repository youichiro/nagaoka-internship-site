require "administrate/base_dashboard"

class InternshipOrderDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    student: Field::BelongsTo,
    internship: Field::BelongsTo,
    is_contacted: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    student
    internship
    is_contacted
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    student
    internship
    is_contacted
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    student
    internship
    is_contacted
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
