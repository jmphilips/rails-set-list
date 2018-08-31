class CreateConcert < ActiveRecord::Migration[5.1]
  def change
    create_table :concerts do |t|
      t.string :venue
      t.string :city
      t.string :state
      t.datetime :date
      t.references :band, index: :true, foreign_key: :true
    end
  end
end
