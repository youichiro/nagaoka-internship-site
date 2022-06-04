class CreateNagaokaCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :nagaoka_companies do |t|
      t.integer :number, null: false, index: { unique: true }
      t.string :name, null: false, index: { unique: true }
      t.string :company_url
      t.references :business_categories, foreign_key: true, null: false

      t.timestamps
    end
  end
end
