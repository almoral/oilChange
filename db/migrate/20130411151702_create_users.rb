class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :mileage

      t.timestamps
    end
  end
end
