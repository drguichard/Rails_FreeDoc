class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :doc_spes
  has_many :specialities, through: :doc_spes
  belongs_to :city
end
