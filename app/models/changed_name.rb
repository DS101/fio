class ChangedName < ApplicationRecord
  belongs_to :person, dependent: :destroy
end
