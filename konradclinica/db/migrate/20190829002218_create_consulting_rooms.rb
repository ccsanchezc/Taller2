class CreateConsultingRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :consulting_rooms do |t|
      t.string :name
      t.string :location
      t.references :consultig_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
