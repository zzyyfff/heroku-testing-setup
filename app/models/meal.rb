# frozen_string_literal: true

class Meal < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
end
