class CreateSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :specialities do |t|
      t.string :speciality_name
    end
  end
end
