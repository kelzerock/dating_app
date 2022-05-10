class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
