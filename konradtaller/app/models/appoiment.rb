class Appoiment < ApplicationRecord
  belongs_to :consulting_room
  belongs_to :patient
  belongs_to :doctor
end
