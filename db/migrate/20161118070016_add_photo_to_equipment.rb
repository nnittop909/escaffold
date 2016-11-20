class AddPhotoToEquipment < ActiveRecord::Migration[5.0]
  def up
    add_attachment :equipment, :photo
  end

  def down
    remove_attachment :equipment, :photo
  end
end
