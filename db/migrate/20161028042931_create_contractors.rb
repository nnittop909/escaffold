class CreateContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :contractors do |t|
      t.boolean :main_contractor
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :company
      t.string :position
      t.string :profile_image_id

      t.timestamps
    end
  end
end
