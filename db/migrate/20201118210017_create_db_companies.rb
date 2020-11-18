class CreateDbCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :db_companies do |t|
      t.string :company_name
      t.text :company_info
      t.text :company_target
      t.text :company_media
      t.text :company_salary

      t.timestamps
    end
  end
end
