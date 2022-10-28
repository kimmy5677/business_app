class CreateBusinessApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :business_applications do |t|
      t.string :title
      t.text :about
      t.integer :status

      t.timestamps
    end
  end
end
