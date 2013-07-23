class Product < ActiveRecord::Base
  validates :title, :description, :image_url, :price, presence: {message: "needs to be filled in silly!"}
  validates :title, uniqueness: true
  validates :title, length: {minimum: 10, message: 'must be greater than 10 characters, if you dont mind!'}
  validates :price, allow_blank: true, numericality: {greater_than_or_equal_to: 0.01, message: 'must be greater than 0.'}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }

  def self.latest
    Product.order(:updated_at).last
  end

end
