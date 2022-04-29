require "administrate/base_dashboard"

class StudentDetailDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    student: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    disable_notification: Field::Boolean,
    birthday: Field::Date,
    school_name: Field::String,
    department: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    name
    student
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    name
    disable_notification
    birthday
    school_name
    department
    created_at
    updated_at
    student
  ].freeze

  FORM_ATTRIBUTES = %i[
    name
    disable_notification
    birthday
    school_name
    department
    student
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
