class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :starting_date
      t.date :ending_date
      t.references :user, foreign_key: true
      t.references :ship, foreign_key: true

      t.timestamps
    end
  end
end
