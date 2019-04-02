class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :reviews

  validates :name, :address, :phone, :website, :image, presence: true
  validates :phone, format: { with: /\A\(\d{3}\) \d{3}\-\d{4}\z/,
  message: "Phone number format must be (123) 456-7890" }
  validates :phone, format: { with:   /\Ahttp?:\/\/w{3}.{1}{1,25}\.[a-zA-Z]{2,10}\z/,
  message: "Web address must be a valid URL format" }

  \Ahttp?:\/\/w{3}.{1}{1,25}\.[a-zA-Z]{2,10}\z
end
