require 'faker'

Doctor.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'doctors'")
Patient.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'patients'")
Appointement.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'appointements'")


10.times do
  doctor = Doctor.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, zip_code: Faker::Address.zip_code)
end

10.times do
  patient = Patient.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name)
end

40.times do
  appointement = Appointement.create!(doctor_id: Doctor.all.sample, patient_id: Patient.all.sample)
end
