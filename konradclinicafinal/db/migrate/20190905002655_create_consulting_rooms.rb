class CreateConsultingRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :consulting_rooms do |t|

      t.timestamps
    end
  end
end
