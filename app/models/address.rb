class Address < ActiveRecord::Base

  belongs_to :user
  has_many :users, foreign_key: :billing_id
  has_many :users, foreign_key: :shipping_id

  belongs_to :city
  belongs_to :state

  has_many :orders, foreign_key: :billing_id
  has_many :orders, foreign_key: :shipping_id

  def full_address
    self.street_address + ", " + self.city.name + ", " + self.state.name
  end

end
