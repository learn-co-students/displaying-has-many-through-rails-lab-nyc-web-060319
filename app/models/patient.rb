class Patient < ApplicationRecord
  belongs_to :appointment
  has_many :doctors, through: :appointment

  def doctors
    Appointment.where(patient_id: id).map{|appt|appt.doctor}
  end

  def appointments
    Appointment.where(patient_id: id)
  end
end
