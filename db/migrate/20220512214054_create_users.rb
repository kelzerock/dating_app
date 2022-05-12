class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.decimal :lgt
      t.decimal :lnt
      t.string :name
      t.string :src
      t.boolean :sex

      t.timestamps
    end
  end
end
