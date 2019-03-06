# frozen_string_literal: true

class LoanSerializer < ActiveModel::Serializer
  attributes :id, :date, :borrower, :book
  has_one :borrower
  has_one :book
end
