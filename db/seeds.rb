require 'faker'

City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Speciality.destroy_all

10.times do
  speciality = Speciality.create!(speciality: Faker::Vehicle.make)
  city = City.create!(name: Faker::Address.city)
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  appointment = Appointment.create!(date: Faker::Date.in_date_period(month: 2), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end
