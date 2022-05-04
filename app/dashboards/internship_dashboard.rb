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
    video_url: Field::String,
    gif_url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    title
    company
    created_at
    updated_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    title
    company
    description
    start_date
    end_date
    deadline
    location
    target
    thumbnail
    acceptable_number
    others
    video
    video_url
    gif_url
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    title
    company
    description
    start_date
    end_date
    deadline
    location
    target
    thumbnail
    acceptable_number
    others
    video
    video_url
    gif_url
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
