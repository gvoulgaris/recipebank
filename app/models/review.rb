class Review < ApplicationRecord
  # Direct associations

  belongs_to :dish

  belongs_to :user

  # Indirect associations

  # Validations

end
