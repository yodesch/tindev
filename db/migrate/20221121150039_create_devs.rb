class CreateDevs < ActiveRecord::Migration[7.0]
  def change
    create_table :devs do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :profit
      t.string :language
      t.string :disponibility
      t.integer :price_per_day
      t.integer :rating
      t.string :avatar_url

      t.timestamps
    end
  end
end
