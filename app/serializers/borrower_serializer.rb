# frozen_string_literal: true

class BorrowerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
end
