class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    drop_table :doctors 
    create_table :doctors do |t|
    end
  end
end
