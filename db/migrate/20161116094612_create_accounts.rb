class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :code, index: true
      t.string :name, index: true
      t.string :type, index: true
      t.boolean :contra

      t.timestamps
    end
  end
end
