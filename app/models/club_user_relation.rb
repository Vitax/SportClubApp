class ClubUserRelation < ApplicationRecord
  belongs_to :sportclub
  belongs_to :user  
end
