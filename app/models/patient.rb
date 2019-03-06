# frozen_string_literal: true

class Patient < ApplicationRecord
  belongs_to :doctor
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments
end
