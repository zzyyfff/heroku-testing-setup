# frozen_string_literal: true

class Patient < ApplicationRecord
  # many patients to one primary care physician
  belongs_to :primary_care_physician,
             class_name: 'Doctor',
             foreign_key: 'doctor_id',
             inverse_of: 'primary_care_recipients'

  # many to many relationship via appointments
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  validates :first_name, presence: true
  validates :born_on, presence: true
end
