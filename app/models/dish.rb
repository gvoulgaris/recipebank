class Dish < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :cousine

  belongs_to :user

  # Indirect associations

  # Validations

end
