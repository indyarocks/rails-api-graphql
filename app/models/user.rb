class User < ApplicationRecord
  has_many :posts

  def full_address
    "#{street}-#{city}-#{postcode}-#{country}"
  end
end
