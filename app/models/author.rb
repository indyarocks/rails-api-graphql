class Author < ApplicationRecord

  def full_name
    "#{first_name} #{last_name}"
  end

  def coordinates
    [rand(100), rand(100)]
  end

  def publication_years
    (1.upto(rand(10))).map {2023 - rand(20)}
  end
end
