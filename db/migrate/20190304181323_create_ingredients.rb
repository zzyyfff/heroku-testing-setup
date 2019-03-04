# frozen_string_literal: true

class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :unit

      t.timestamps
    end
  end
end
