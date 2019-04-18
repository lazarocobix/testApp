class PatientController < ApplicationController
  def index 
    @patients = Patient.all
  end

  def show
    @patient = Patient.first
    @facility = Facility.first
  end
end
