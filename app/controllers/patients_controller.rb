class PatientsController < ApplicationController
    def index
    end

    def show
        # byebug
        @appt = Appointment.find_by(patient_id: params[:id])
        @doctor = @appt.doctor
        @patient = @appt.patient

    end
end
