class CreateOscarFemaleWinners < ActiveRecord::Migration[5.1]
  def change
    create_table :oscar_female_winners do |t|
      t.integer :year
      t.integer :age
      t.string :name
      t.string :movie

      t.timestamps
    end
  end
end
