class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :doctor, :patient
  has_one :doctor
  has_one :patient
end
