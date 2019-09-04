class ConsultingRoom < ApplicationRecord
  has_many :appoiments
  belongs_to :consultig_type
  
  
end
