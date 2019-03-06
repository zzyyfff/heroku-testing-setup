# frozen_string_literal: true

class Loan < ApplicationRecord
  belongs_to :borrower
  belongs_to :book
end
