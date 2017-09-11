class AddAttachmentPictureToBrands < ActiveRecord::Migration[4.2]
  def self.up
    change_table :brands do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :brands, :picture
  end
end
