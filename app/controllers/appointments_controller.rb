class AppointmentsController < ApplicationController
    def show
        # byebug
        @appt = Appointment.find(params[:id])
        @doctor = @appt.doctor
        @patient = @appt.patient
    end
end
