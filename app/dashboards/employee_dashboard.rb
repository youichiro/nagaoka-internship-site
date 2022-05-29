require "administrate/base_dashboard"

class EmployeeDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    company: Field::BelongsTo,
    employee_detail: Field::HasOne,
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String,
    last_sign_in_ip: Field::String,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    unconfirmed_email: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    email
    company
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    email
    encrypted_password
    reset_password_token
    reset_password_sent_at
    remember_created_at
    sign_in_count
    current_sign_in_at
    last_sign_in_at
    current_sign_in_ip
    last_sign_in_ip
    confirmation_token
    confirmed_at
    confirmation_sent_at
    unconfirmed_email
    created_at
    updated_at
    company
    employee_detail
  ].freeze

  FORM_ATTRIBUTES = []
  # FORM_ATTRIBUTES = %i[
  #   email
  #   encrypted_password
  #   reset_password_token
  #   reset_password_sent_at
  #   remember_created_at
  #   sign_in_count
  #   current_sign_in_at
  #   last_sign_in_at
  #   current_sign_in_ip
  #   last_sign_in_ip
  #   confirmation_token
  #   confirmed_at
  #   confirmation_sent_at
  #   unconfirmed_email
  #   company
  # ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(resource)
    "##{resource.id} #{resource.employee_detail.name}"
  end
end
