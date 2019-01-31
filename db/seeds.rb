require 'faker'

Doctor.destroy_all


10.times do
  doctor = Doctor.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, postal_code: Faker::Address.zip_code)
end

10.times do
  patient = Patient.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name)
end

40.times do
  appointement = Appointement.create!(doctor_id: Doctor.all.sample, patient_id: Patient.all.sample)
end
