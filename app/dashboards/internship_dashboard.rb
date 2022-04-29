require "administrate/base_dashboard"

class InternshipDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    company: Field::BelongsTo,
    video: Field::ActiveStorage.with_options(index_display_preview: false),
    thumbnail: Field::ActiveStorage.with_options(index_display_preview: false),
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    start_date: Field::Date,
    end_date: Field::Date,
    deadline: Field::Date,
    location: Field::String,
    target: Field::String,
    acceptable_number: Field::Number,
    others: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    company
    title
    created_at
    updated_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    title
    description
    start_date
    end_date
    deadline
    location
    target
    thumbnail
    video
    acceptable_number
    others
    created_at
    updated_at
    company
  ].freeze

  FORM_ATTRIBUTES = %i[
    title
    description
    start_date
    end_date
    deadline
    location
    target
    thumbnail
    video
    acceptable_number
    others
    company
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
