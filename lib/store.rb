class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  # validates :mens_apparel, :womens_apparel, presence: true

  validate :sells_either_mens_or_womens_apparel

  def sells_either_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add("Error! This store sells nothing??")
    end
  end

end
