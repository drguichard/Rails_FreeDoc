class Speciality < ApplicationRecord
  has_many :doc_spes
  has_many :doctors, through: :doc_spes
end
