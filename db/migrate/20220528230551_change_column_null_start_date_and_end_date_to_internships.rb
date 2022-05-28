class ChangeColumnNullStartDateAndEndDateToInternships < ActiveRecord::Migration[7.0]
  def change
    change_column_null :internships, :start_date, false
    change_column_null :internships, :end_date, false
  end
end
