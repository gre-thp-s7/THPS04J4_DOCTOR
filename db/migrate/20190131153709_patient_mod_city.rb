class PatientModCity < ActiveRecord::Migration[5.2]
  def change
    change_table :patients do |t|
      t.belongs_to :city, index: true
    end
  end
end
