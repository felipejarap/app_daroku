class Suggestion < ApplicationRecord
  belongs_to :user
  belongs_to :type_sugestion
end
