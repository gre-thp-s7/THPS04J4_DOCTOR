class AppointmentDate < ActiveRecord::Migration[5.2]

    change_table :appointments do |t|
      t.datetime :date
      t.belongs_to :city, index: true
    end
  
end
