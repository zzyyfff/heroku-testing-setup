# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :meals, dependent: :destroy
  has_many :ingredients, through: :meals
end
