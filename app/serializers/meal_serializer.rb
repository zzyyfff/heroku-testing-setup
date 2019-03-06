class MealSerializer < ActiveModel::Serializer
  attributes :id, :amount, :unit, :ingredient
  has_one :recipe
  has_one :ingredient
end
