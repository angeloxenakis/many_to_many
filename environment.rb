require 'pry'

require_relative './doctor.rb'
require_relative './patient.rb'
require_relative './appointment.rb'

doctor_1 = Doctor.new("Dr. Damon", "Brain Surgery")
Doctor.new("Dr. Ahmed", "Dermatology")

patient_1 = Patient.new("Angelo")
Patient.new("Brian")
Patient.new("Jon")
Patient.new("Kristine")

Appointment.new(doctor_1, patient_1)
Appointment.new(doctor_1, patient_2)
Appointment.new(doctor_2, patient_2)

binding.pry
0