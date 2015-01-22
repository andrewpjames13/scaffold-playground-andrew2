class CreateOrginizations < ActiveRecord::Migration
  def change
    create_table :orginizations do |t|
      t.string :name
      t.integer :number_of_employees

      t.timestamps
    end
  end
end
