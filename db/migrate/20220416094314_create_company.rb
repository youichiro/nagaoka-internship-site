class CreateCompany < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :company_url, default: ''
      t.string :phone_number, null: false
      t.references :business_category, foreign_key: true, null: false
      t.string :address, null: false
      t.text :business_description, default: ''
      t.integer :number_of_employee, deafult: nil
      t.string :manager_name, null: false
      t.string :manager_email, null: false

      t.timestamps
    end
  end
end
