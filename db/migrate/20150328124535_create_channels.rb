class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :theme

      t.timestamps null: false
    end
  end
end
