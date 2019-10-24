require 'faker'
10.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Vehicle.make, zip_code: Faker::Address.zip_code)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  appointment = Appointment.create!(date: Faker::Date.in_date_period(month: 2), doctor: Doctor.all.sample, patient: Patient.all.sample) #, city: City.all.sample
end
