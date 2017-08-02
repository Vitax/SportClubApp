class Sportclub < ApplicationRecord
  has_many :club_user_relation
  has_many :users, through: :club_user_relation
end
