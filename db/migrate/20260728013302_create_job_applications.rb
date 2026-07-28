class CreateJobApplications < ActiveRecord::Migration[8.1]
  def change
    create_table :job_applications do |t|
      t.string :company
      t.string :role_title
      t.string :status
      t.integer :salary_expectation
      t.date :applied_date

      t.timestamps
    end
  end
end
