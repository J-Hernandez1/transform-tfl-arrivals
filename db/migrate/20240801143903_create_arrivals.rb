class CreateArrivals < ActiveRecord::Migration[7.1]
  def change
    create_table :arrivals do |t|

      t.timestamps
    end
  end
end
