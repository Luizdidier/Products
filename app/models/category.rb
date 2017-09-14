class Category < ApplicationRecord
	has_many :product, :dependent => :delete_all
	acts_as_paranoid
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" },
	:path => ':rails_root/public/images/categories/:id-:basename-:style.:extension',
	:url => '/images/categories/:id-:basename-:style.:extension'
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
	validates :name, presence: true
	validates :picture, attachment_presence: true
	#Search method
	def self.search(search)
		where("name LIKE ?", "%#{search}%") 
	end
	def picture_url
		picture.url(:thumb)
	end
end
