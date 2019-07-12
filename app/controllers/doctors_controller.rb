class DoctorsController < ApplicationController
    def show
        # @doctor = Doctor.find(params[:id])
        @appt = Appointment.find_by(doctor_id: params[:id])
        @doctor = @appt.doctor
        @patient = @appt.patient
        # byebug
    end
end
