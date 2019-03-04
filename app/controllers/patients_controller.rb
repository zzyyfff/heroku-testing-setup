# frozen_string_literal: true

class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    render json: Patient.find(params[:id])
  end
end
