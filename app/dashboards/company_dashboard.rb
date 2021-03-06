require "administrate/base_dashboard"

class CompanyDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    business_category: Field::BelongsTo,
    employees: Field::HasMany,
    internships: Field::HasMany,
    thumbnail: Field::ActiveStorage.with_options(index_display_preview: false),
    id: Field::Number,
    name: Field::String,
    company_url: Field::String,
    contact_phone_number: Field::String,
    address: Field::String,
    business_description: Field::Text,
    number_of_employee: Field::Number,
    contact_name: Field::String,
    contact_email: Field::String,
    is_public: Field::Boolean,
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
    business_category
    company_url
    contact_phone_number
    address
    business_description
    number_of_employee
    contact_name
    contact_email
    thumbnail
    is_public
    created_at
    updated_at
    employees
    internships
  ].freeze

  FORM_ATTRIBUTES = %i[
    name
    business_category
    company_url
    contact_phone_number
    address
    business_description
    number_of_employee
    contact_name
    contact_email
    thumbnail
    is_public
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(resource)
    "##{resource.id} #{resource.name}"
  end
end
