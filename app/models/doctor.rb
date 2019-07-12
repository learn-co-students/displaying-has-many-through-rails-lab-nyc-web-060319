class Doctor < ApplicationRecord
  belongs_to :appointment
  has_many :patients, through: :appointment

  def appointments
    # byebug
    Appointment.where(doctor_id: id)
  end

  def patients
    Appointment.where(doctor_id: id).map{|appt| appt.patient}
  end
end
