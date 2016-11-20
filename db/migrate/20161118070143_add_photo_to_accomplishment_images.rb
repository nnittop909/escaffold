class AddPhotoToAccomplishmentImages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :accomplishment_images, :photo
  end

  def down
    remove_attachment :accomplishment_images, :photo
  end
end
