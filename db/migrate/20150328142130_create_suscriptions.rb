class CreateSuscriptions < ActiveRecord::Migration
  def change
    create_table :suscriptions do |t|

      t.timestamps null: false
    end
  end
end
