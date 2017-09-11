class AddAttachmentPictureToProducts < ActiveRecord::Migration[4.2]
  def self.up
    change_table :products do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :products, :picture
  end
end
