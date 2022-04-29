require "administrate/base_dashboard"

class AnnouncementDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    announcement_category: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    contents: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    title
    announcement_category
    created_at
    updated_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    title
    contents
    created_at
    updated_at
    announcement_category
  ].freeze

  FORM_ATTRIBUTES = %i[
    title
    contents
    announcement_category
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
