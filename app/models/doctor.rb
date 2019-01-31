class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :join_table_speciality_doctors
  has_many :specialities, through: :join_table_speciality_doctors
  belongs_to :city, optional: true
end
