class JoinTableSpecialityDoctor < ApplicationRecord
  belongs_to :doctor, optional: true
  belongs_to :speciality, optional: true
end
