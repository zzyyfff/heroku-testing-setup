# frozen_string_literal: true

class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit, :recipe_id, :recipe
end
