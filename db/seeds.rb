require 'faker'

Doctor.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'doctors'")
Patient.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'patients'")
Appointment.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'appointments'")
City.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")
Speciality.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'specialities'")
JoinTableSpecialityDoctor.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'join_table_speciality_doctors'")

10.times do
  city = City.create!(city_name: Faker::GameOfThrones.city)
end

20.times do
  doctor = Doctor.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, zip_code: Faker::Address.zip_code, city_id: City.all.sample.id)
end

10.times do
  speciality = Speciality.create!(speciality_name: Faker::Hacker.adjective)
end

40.times do
  doctor_speciality = JoinTableSpecialityDoctor.create!(doctor_id: Doctor.all.sample.id, speciality_id: Speciality.all.sample.id)
end

40.times do
  patient = Patient.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, city_id: City.all.sample.id)
end

50.times do
  appointment = Appointment.create!(doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, date: Faker::Time.between(2.days.ago, Date.today, :all), city_id: City.all.sample.id)
end
