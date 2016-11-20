class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :main_contractor_id
      t.string :id_number
      t.text :name
      t.string :address
      t.integer :status
      t.decimal :duration
      t.decimal :cost
      t.integer :category_id
      t.string :implementing_office

      t.timestamps
    end
  end
end
