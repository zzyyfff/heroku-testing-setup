# frozen_string_literal: true

class Doctor < ApplicationRecord
  # one doctor to many primary care recipients
  has_many :primary_care_recipients,
           class_name: 'Patient',
           inverse_of: 'primary_care_physician'

  # many to many relationship via appointments
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
end
